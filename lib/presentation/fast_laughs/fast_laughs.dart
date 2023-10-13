import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:netflix_clone/application/fast_laughs/fast_laughs_bloc.dart';
import 'package:netflix_clone/presentation/fast_laughs/widgets/video_list_item.dart';

class FastLaughs extends StatelessWidget {
  const FastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<FastLaughsBloc>()
          .add(const FastLaughsEvent.getDownloadsImages());
      context
          .read<FastLaughsBloc>()
          .add(const FastLaughsEvent.getFastLaughVideos());
    });

    return SafeArea(
      child: BlocBuilder<FastLaughsBloc, FastLaughsState>(
        builder: (context, state) {
          if (state.isError) {
            return const Center(
              child: Text("Error Occured"),
            );
          } else if (state.dpImage.isEmpty && state.videoList.isEmpty) {
            return const Center(
              child: Text("List is empty"),
            );
          } else if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(state.videoList.length, (index) {
                if (state.dpImage.isNotEmpty && state.videoList.isNotEmpty) {
                  final imageDp = state.dpImage[index];
                  final videoList = state.videoList[index];
                  return VideoListItemInheritedWidget(
                    videoUrl: videoList,
                    movieData: imageDp,
                    widget: VideoListItem(index: index),
                  );
                } else {
                  return Center(
                    child: LoadingAnimationWidget.staggeredDotsWave(
                      color: Colors.white,
                      size: 50,
                    ),
                  );
                }

                // final videoList = dummyVideoUrls[index];
              }),
            );
          }
        },
      ),
    );
  }
}
