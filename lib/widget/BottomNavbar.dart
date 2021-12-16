import 'package:flutter/material.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_home_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_announcement_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_another_menu_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

Map<String, WidgetBuilder> routes = {
  '/announcement-mahasiswa': (context) => const MahasiswaAnnouncement(),
  '/another-menu-mahasiswa': (context) => const MahasiswaAnotherMenu(),
  "/home-mahasiswa": (context) => const MahasiswaHome(),
};

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
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
                  Navigator.pushNamed(context, '/home-mahasiswa',
                      arguments: "1");
                },
                icon: Icon(Icons.home_rounded),
                color: Colors.black,
              ),
              Text(
                "Beranda",
                style: TextStyle(
                    fontSize: 7,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/announcement-mahasiswa',
                      arguments: "1");
                },
                icon: Icon(Icons.feed_rounded),
                color: Colors.grey,
              ),
              Text(
                "Pengumuman",
                style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/another-menu-mahasiswa',
                      arguments: "1");
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
