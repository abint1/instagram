import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/src/mention.dart';
import 'package:instagram/src/profile_feed.dart';
import 'package:instagram/src/reelfeed.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  void initState() {
    _tabcontroller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('asset/images/download.jpeg'),
                    ),
                    Text(
                      'Leo Messi',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 8),
                child: Column(
                  children: [
                    Text(
                      '995',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Post',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 8),
                child: Column(
                  children: [
                    Text(
                      '428M',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 8),
                child: Column(
                  children: [
                    Text(
                      '290',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 53, 53),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      'Edit profile',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 53, 53),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      'Share profile',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 60, 59, 59),
                                  Color.fromARGB(255, 60, 59, 59),
                                ]),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('asset/images/messisit.jpeg'),
                            ),
                          ),
                        ),
                        Text(
                          'Seleccion',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 60, 59, 59),
                                    Color.fromARGB(255, 60, 59, 59),
                                  ]),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                    AssetImage('asset/images/messifcb.jpeg'),
                              ),
                            ),
                          ),
                          Text(
                            'FCB',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 60, 59, 59),
                                    Color.fromARGB(255, 60, 59, 59),
                                  ]),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                    AssetImage('asset/images/familia.jpeg'),
                              ),
                            ),
                          ),
                          Text(
                            'Familia',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            // child: Row(
            //   children: [
            //     Container(
            //       width: 60,
            //       height: 60,
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         gradient: LinearGradient(
            //             begin: Alignment.topCenter,
            //             end: Alignment.bottomCenter,
            //             colors: [
            //               Color.fromARGB(255, 60, 59, 59),
            //               Color.fromARGB(255, 60, 59, 59),
            //             ]),
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.all(4),
            //         child: CircleAvatar(
            //           radius: 28,
            //           backgroundImage: AssetImage('asset/images/messisit.jpeg'),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 15),
            //       child: Container(
            //         width: 60,
            //         height: 60,
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           gradient: LinearGradient(
            //               begin: Alignment.topCenter,
            //               end: Alignment.bottomCenter,
            //               colors: [
            //                 Color.fromARGB(255, 60, 59, 59),
            //                 Color.fromARGB(255, 60, 59, 59),
            //               ]),
            //         ),
            //         child: Padding(
            //           padding: const EdgeInsets.all(4.0),
            //           child: CircleAvatar(
            //             radius: 28,
            //             backgroundImage:
            //                 AssetImage('asset/images/messifcb.jpeg'),
            //           ),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 15),
            //       child: Container(
            //         width: 60,
            //         height: 60,
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           gradient: LinearGradient(
            //               begin: Alignment.topCenter,
            //               end: Alignment.bottomCenter,
            //               colors: [
            //                 Color.fromARGB(255, 60, 59, 59),
            //                 Color.fromARGB(255, 60, 59, 59),
            //               ]),
            //         ),
            //         child: Padding(
            //           padding: const EdgeInsets.all(4),
            //           child: CircleAvatar(
            //             radius: 28,
            //             backgroundImage:
            //                 AssetImage('asset/images/familia.jpeg'),
            //           ),
            //         ),
            //       ),
            //     )
            //   ],
            // ),
          ),
          TabBar(
              indicatorColor: Colors.white,
              controller: _tabcontroller,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_view_outlined,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.video_collection_outlined),
                ),
                Tab(
                  icon: Icon(Icons.person_pin_outlined),
                )
              ]),
          Expanded(
              child: TabBarView(
            controller: _tabcontroller,
            children: [Feed(), Reelfeed(), Mention()],
          ))
        ],
      ),
    );
  }
}
