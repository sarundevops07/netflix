import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        right: 7.7,
      ),
      child: Container(
        height: size.height * 0.25,
        width: size.width * 0.35,
        decoration: BoxDecoration(
          borderRadius: borderRadiusCirclular10,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(url),
          ),
        ),
      ),
    );
  }
}
