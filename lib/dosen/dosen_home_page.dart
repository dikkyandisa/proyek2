import 'package:flutter/material.dart';
import 'package:project_lms_teknik_sipil/widget/BottomNavbar.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_announcement_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_another_menu_page.dart';

class dosen_home extends StatefulWidget {
  const dosen_home({Key? key}) : super(key: key);

  @override
  dosen_home_page createState() => dosen_home_page();
}

class dosen_home_page extends State<dosen_home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double screenHeight = (size.height - (4.9 * kToolbarHeight));
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
                        "Drs. Armin Naibaho, ST., MT.",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        "Jurusan Teknik Sipil",
                        style: TextStyle(
                            color: Colors.white,
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
                              new GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/jadwal-dosen');
                                },
                                child: Container(
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Colors.white),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.watch_later_outlined,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Flexible(
                                                child: Text(
                                              "Jadwal Mengajar",
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
                                              "2 MRK 1",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text("08.00 - 13.00",
                                                        style: TextStyle(
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            color:
                                                                Colors.black38,
                                                            fontSize: 10)),
                                                    Text("via Zoom Meeting",
                                                        style: TextStyle(
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            color:
                                                                Colors.black38,
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
                              ),
                              new GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/presensi-dosen');
                                },
                                child: Container(
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
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
                                            )),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "06:00-07:00 WIB",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                            Text("Presensi sebelum 07.00",
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontSize: 10)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/kelas-dosen');
                                },
                                child: Container(
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Colors.white),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.view_agenda_outlined,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Flexible(
                                                child: Text(
                                              "Kelas",
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
                                              "MER III",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                            Row(
                                              children: const [
                                                Text(
                                                    "Semester Ganjil 2020/2021",
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
                              ),
                              new GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/jurnal-skripsi-dosen');
                                },
                                child: Container(
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Colors.white),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.watch_later_outlined,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Flexible(
                                                child: Text(
                                              "Jurnal dan Skripsi",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ))
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Jurusan Teknik Sipil",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              "Tahun Ajaran 2018-2021",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black38),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/surat-tugas-dosen');
                                },
                                child: Container(
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Colors.white),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.calendar_today_rounded,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Flexible(
                                                child: Text(
                                              "Surat Tugas",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ))
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
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
                              ),
                              new GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/pemangkatan-dosen');
                                },
                                child: Container(
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Colors.white),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.auto_graph_rounded,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Flexible(
                                                child: Text(
                                              "Program Pemangkatan",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ))
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "1A",
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
                                    Navigator.pushNamed(context, '/home-dosen');
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
                                    Navigator.pushNamed(
                                        context, '/announcement-dosen');
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
                                    Navigator.pushNamed(
                                        context, '/another-menu-dosen');
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
