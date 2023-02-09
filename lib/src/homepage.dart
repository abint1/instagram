import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InstaHome extends StatefulWidget {
  const InstaHome({super.key});

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text(
      //     'Instagram',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded)),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.messenger_sharp))
      //   ],
      // ),
      body: Column(
        children: [
          Container(
            height: 90,
            child: ListView.builder(
              itemCount: 30,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF982282), Color(0XFFEEA863)]),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage('asset/images/download.jpeg')),
                        ),
                      ),
                    ),
                    Text(
                      'name',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 300,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('asset/images/download.jpeg'),
                              ),
                            ),
                            Title(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Abin',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      Text('orginal',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 205),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.more_vert_outlined,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/images/messi.jpeg'),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 250),
                              child: Icon(
                                Icons.save_alt_outlined,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


// ListView(
//             children: [
//               ListTile(
//                 leading: CircleAvatar(),
//                 title: Text(
//                   'Abin',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 subtitle: Text(
//                   'orginal',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 trailing: IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.more_vert_outlined,
//                       color: Colors.white,
//                     )),
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 height: 250,
//                 child: Image(
//                   image: NetworkImage(
//                       'https://images.ctfassets.net/hrltx12pl8hq/5qusjAtcAaetdPsing4jR6/2db2f75abd2840caa09d21312b4fc6c8/animals-wildlife-shutterstock_1066200380.jpg?fit=fill&w=480&h=320'),
//                   fit: BoxFit.fill,
//                 ),
//               )
//             ],
//           )