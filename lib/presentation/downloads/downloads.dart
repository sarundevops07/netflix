import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';
import 'package:netflix_clone/domain/core/const.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Downloads extends StatelessWidget {
  Downloads({super.key});

  final widgetList = [
    const SectionOne(),
    const SectionTwo(),
    const SectionThree(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBarWidget(title: "Downloads"),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(3),
          itemBuilder: (context, index) => widgetList[index],
          separatorBuilder: (context, value) => const SizedBox(
                height: 30,
              ),
          itemCount: widgetList.length),
    );
  }
}

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceHeight10,
        Row(
          children: [
            spaceWidth10,
            const Icon(Icons.settings),
            spaceWidth10,
            const Text(
              "Smart Downloads",
              style: TextStyle(fontSize: 19),
            ),
          ],
        ),
        spaceHeight10,
        const Text(
          "Intoducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        spaceHeight10,
        const Text(
          "We will download a personalised selection of\n movies and shows for you,So there is\n always something to watch on your device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
      ],
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<DownloadsBloc>()
          .add(const DownloadsEvent.getDownloadsImages());
    });
    final size = MediaQuery.of(context).size;

    return BlocBuilder<DownloadsBloc, DownloadsState>(
      builder: (context, state) {
        return Skeletonizer(
          enabled: state.isLoading,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: size.width,
                width: size.width,
                child: FittedBox(
                  fit: BoxFit.none,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 80, 80, 80),
                    radius: size.width * 0.40,
                  ),
                ),
              ),
              // Check if state.downloads list is not empty before using it
              if (state.downloads.isNotEmpty)
                downloadsimagewidget(
                  height: size.width * 0.49,
                  width: size.width * 0.33,
                  backgroundImage:
                      "$imageAppendUrl${state.downloads[0].posterPath}",
                  size: size,
                  cardangle: 20 * pi / 180,
                  margin: EdgeInsets.only(left: size.width * 0.5),
                ),
              if (state.downloads.isNotEmpty)
                downloadsimagewidget(
                  height: size.width * 0.49,
                  width: size.width * 0.33,
                  backgroundImage:
                      "$imageAppendUrl${state.downloads[1].posterPath}",
                  size: size,
                  cardangle: -20 * pi / 180,
                  margin: EdgeInsets.only(right: size.width * 0.5),
                ),
              if (state.downloads.isNotEmpty)
                downloadsimagewidget(
                  height: size.width * 0.59,
                  width: size.width * 0.37,
                  backgroundImage:
                      "$imageAppendUrl${state.downloads[2].posterPath}",
                  size: size,
                  margin: EdgeInsets.only(top: size.width * 0.13),
                ),
            ],
          ),
        );
      },
    );
  }

  Transform downloadsimagewidget(
      {required Size size,
      double cardangle = 0,
      EdgeInsets? margin,
      required String backgroundImage,
      double height = 0,
      double width = 0}) {
    return Transform.rotate(
      angle: cardangle,
      child: Container(
          margin: margin,
          decoration: BoxDecoration(
            borderRadius: borderRadiusCirclular10,
            // color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                backgroundImage,
              ),
            ),
          ),
          height: height,
          width: width),
    );
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        button(
          buttonText: "Set Up",
          size: size.width * 0.88,
        ),
        spaceHeight10,
        button(
            size: size.width * 0.77,
            buttonText: "Download",
            buttonColor: whiteColor,
            buttonTextColor: blackColor),
      ],
    );
  }

  Widget button(
      {required String buttonText,
      Color buttonColor = blueColor,
      Color buttonTextColor = whiteColor,
      required double size}) {
    return SizedBox(
      width: size,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 6.3),
        shape: RoundedRectangleBorder(borderRadius: borderRadiusCirclular10),
        color: buttonColor,
        onPressed: () {},
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20, color: buttonTextColor),
        ),
      ),
    );
  }
}
