import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({
    super.key,
    required this.width,
    required this.url,
  });
  final double width;
  final String url;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: size.width * 0.55,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(url),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: blackColor.withOpacity(0.9),
            radius: 22,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: whiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
