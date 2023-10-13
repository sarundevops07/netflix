import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';

ValueNotifier<int> indexChangedNotifier = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  BottomNavigationBarItem bottomNavItem(
      {Icon icon = const Icon(Icons.abc), String? label}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label ?? "",
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangedNotifier,
      builder: (context, index, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (index) => indexChangedNotifier.value = index,
          elevation: 0,
          backgroundColor: backgroundColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: [
            bottomNavItem(
              icon: const Icon(Icons.home),
              label: "Home",
            ),
            bottomNavItem(
              icon: const Icon(Icons.collections),
              label: "News&Hot",
            ),
            bottomNavItem(
              icon: const Icon(Icons.emoji_emotions),
              label: "Fast Laughs",
            ),
            bottomNavItem(
              icon: const Icon(Icons.search),
              label: "Search",
            ),
            bottomNavItem(
              icon: const Icon(Icons.download),
              label: "Download",
            ),
          ],
        );
      },
    );
  }
}
