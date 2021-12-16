import 'package:flutter/material.dart';

class MahasiswaAnnouncement extends StatefulWidget {
  const MahasiswaAnnouncement({Key? key}) : super(key: key);

  @override
  MahasiswaAnnouncementPage createState() => MahasiswaAnnouncementPage();
}

class MahasiswaAnnouncementPage extends State<MahasiswaAnnouncement> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - (2 * kToolbarHeight) - 28);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.lightBlueAccent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('LMS POLINEMA'),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            backgroundColor: Colors.lightBlueAccent,
            body: Column(
              children: [
                SizedBox(
                  height: itemHeight,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    padding: new EdgeInsets.only(top: 30, left: 15, right: 15),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        // SizedBox(
                        //   height: 30,
                        // ),
                        Text(
                          "Pengumuman",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                BottomNavbar()
              ],
            )));
  }
}

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home-mahasiswa');
                },
                icon: Icon(Icons.home_rounded),
                color: Colors.grey,
              ),
              Text(
                "Beranda",
                style: TextStyle(
                    fontSize: 7,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/announcement-mahasiswa');
                },
                icon: Icon(Icons.feed_rounded),
                color: Colors.black,
              ),
              Text(
                "Pengumuman",
                style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/another-menu-mahasiswa');
                },
                icon: Icon(Icons.apps_rounded),
                color: Colors.grey,
              ),
              Text(
                "Menu Lainnya",
                style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
