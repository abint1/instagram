import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/src/bottom_navi.dart';
import 'package:instagram/src/homepage.dart';
import 'package:instagram/src/notification.dart';
import 'package:instagram/src/profile.dart';
import 'package:instagram/src/reel.dart';
import 'package:instagram/src/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static ValueNotifier<int> selectBottomIndex = ValueNotifier(0);
  final _pages = const [
    InstaHome(),
    Search(),
    Reel(),
    Notifications(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.messenger_sharp))
        ],
      ),
      bottomNavigationBar: BottomNavi(),
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: selectBottomIndex,
        builder: (BuildContext context, int updateindex, _) {
          return _pages[updateindex];
        },
      )),
    );
  }
}
