import 'package:flutter/material.dart';
import 'package:project_lms_teknik_sipil/widget/BottomNavbar.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_announcement_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_another_menu_page.dart';

class MahasiswaHome extends StatefulWidget {
  const MahasiswaHome({Key? key}) : super(key: key);

  @override
  MahasiswaHomePage createState() => MahasiswaHomePage();
}

class MahasiswaHomePage extends State<MahasiswaHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double screenHeight = (size.height - (5 * kToolbarHeight) - 8);
    final double screenSize = kToolbarHeight;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 4.5;
    final double itemWidth = size.width / 2;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.lightBlueAccent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SISTEM AKADEMIK'),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            backgroundColor: Colors.grey,
            body: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                      Text(
                        "Nama Mahasiswa Yang Login".toUpperCase(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        "Jurusan Mahasiswa Yang Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 13),
                      ),
                      Text(
                        "Prodi Mahasiswa Yang Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 13),
                      ),
                      SizedBox(
                        height: screenHeight,
                        child: GridView.count(
                            crossAxisCount: 2,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            childAspectRatio: (itemWidth / itemHeight),
                            children: <Widget>[
                              Container(
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.watch_later_outlined,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                              child: Text(
                                            "Mata Kuliah",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ))
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Ilmu Ukur Tanah II",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("08.00 - 13.00",
                                                      style: TextStyle(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          color: Colors.black38,
                                                          fontSize: 10)),
                                                  Text("via Zoom Meeting",
                                                      style: TextStyle(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          color: Colors.black38,
                                                          fontSize: 10)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.watch_later_outlined,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                              child: Text(
                                            "Presensi",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ))
                                        ],
                                      ),
                                      Text(
                                        "08:00-13:00 WIB",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.view_agenda_outlined,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                              child: Text(
                                            "Tugas dan Materi",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ))
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "2 MRK 4",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          Row(
                                            children: [
                                              Text("Semester Ganjil 2020/2021",
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: Colors.black38,
                                                      fontSize: 10)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.watch_later_outlined,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                              child: Text(
                                            "Media Pembelajaran",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ))
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kelas Daring",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "Google Classroom, Zoom, dan LMS",
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                fontSize: 10,
                                                color: Colors.black38),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_today_rounded,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                              child: Text(
                                            "Kalender Akademik",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ))
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Semester Ganjil",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "Tahun Ajaran 2020/2021",
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                fontSize: 10,
                                                color: Colors.black38),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.auto_graph_rounded,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                              child: Text(
                                            "Transkrip Nilai",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ))
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "IP 3.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "Semester Ganjil 2020/2021",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.black38),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      Container(
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
                                offset:
                                    Offset(0, 4), // changes position of shadow
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
                                    Navigator.pushNamed(
                                        context, '/home-mahasiswa');
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
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
