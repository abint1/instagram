import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/src/home.dart';

class BottomNavi extends StatelessWidget {
  const BottomNavi({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Home.selectBottomIndex,
      builder: (BuildContext context, int updateIndex, Widget? _) {
        return BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: updateIndex,
          onTap: (index) {
            Home.selectBottomIndex.value = index;
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('asset/images/download.jpeg'),
                ),
                label: "")
          ],
        );
      },
    );
  }
}
