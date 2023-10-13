import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';
import 'package:netflix_clone/domain/core/const.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MainTitleWidget(title: "Top Searches"),
          spaceHeight10,
          Expanded(child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isError) {
                const Center(child: Text("Error Occured"));
              } else if (state.idleList.isEmpty) {
                const Text("List is empty");
              }
              return Skeletonizer(
                enabled: state.isLoading,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final movie = state.idleList[index];
                      return TopSearchItemTile(
                        imageUrl: movie.posterPath ?? "",
                        title: movie.title ?? "No title",
                      );
                    },
                    separatorBuilder: (context, index) {
                      return spaceHeight20;
                    },
                    itemCount: state.idleList.length),
              );
            },
          )),
        ],
      ),
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  const TopSearchItemTile(
      {super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        sectionOne(size),
        sectionTwo(),
        sectionThree(size),
      ],
    );
  }

  CircleAvatar sectionThree(Size size) {
    return CircleAvatar(
      backgroundColor: blackColor,
      radius: size.width * 0.11,
      child: IconButton(
        icon: Icon(
          Icons.play_arrow,
          size: size.width * 0.19,
        ),
        onPressed: () {},
        color: whiteColor,
      ),
    );
  }

  Expanded sectionTwo() {
    return Expanded(
      child: Text(
        title,
        style: const TextStyle(fontSize: 17),
      ),
    );
  }

  Container sectionOne(Size size) {
    return Container(
      height: size.height * 0.11,
      width: size.width * 0.39,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("$imageAppendUrl$imageUrl"),
        ),
      ),
    );
  }
}
