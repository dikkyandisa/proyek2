import 'package:flutter/material.dart';
import 'package:project_lms_teknik_sipil/widget/containerMenu.dart';

class MahasiswaBiodataDosen extends StatefulWidget {
  const MahasiswaBiodataDosen({Key? key}) : super(key: key);

  @override
  MahasiswaBiodataDosenPage createState() => MahasiswaBiodataDosenPage();
}

class MahasiswaBiodataDosenPage extends State<MahasiswaBiodataDosen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double screenHeight = (size.height - (2.5 * kToolbarHeight));
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
                      SizedBox(
                        height: screenHeight,
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
                                  offset: Offset(
                                      0, 4), // changes position of shadow
                                ),
                              ]),
                          padding: new EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.arrow_back,
                                            color: Colors.black),
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.people_outline_rounded,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        "Biodata Dosen",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      icon: Icon(Icons.close,
                                          color: Colors.black)),
                                ],
                              ),
                              SizedBox(
                                height: 600,
                                child: ListView(
                                  children: [
                                    Container(
                                        width: double.infinity,
                                        height: 50,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 7,
                                                  offset: Offset(0, 4)),
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                                child: Text("Dosen Struktur",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15))),
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pushNamed(context,
                                                      '/list-dosen-mahasiswa');
                                                },
                                                icon: Icon(Icons
                                                    .arrow_forward_rounded))
                                          ],
                                        )),
                                    Container(
                                        width: double.infinity,
                                        height: 50,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 7,
                                                  offset: Offset(0, 4)),
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                                child: Text(
                                                    "Dosen Manajemen Konstruksi",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15))),
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pushNamed(context,
                                                      '/list-dosen-mahasiswa');
                                                },
                                                icon: Icon(Icons
                                                    .arrow_forward_rounded))
                                          ],
                                        )),
                                    Container(
                                        width: double.infinity,
                                        height: 50,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 7,
                                                  offset: Offset(0, 4)),
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                                child: Text("Dosen Keairan",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15))),
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pushNamed(context,
                                                      '/list-dosen-mahasiswa');
                                                },
                                                icon: Icon(Icons
                                                    .arrow_forward_rounded))
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
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
                                        context, '/announcement-mahasiswa');
                                  },
                                  icon: Icon(Icons.apps_rounded),
                                  color: Colors.black,
                                ),
                                Text(
                                  "Menu Lainnya",
                                  style: TextStyle(
                                      fontSize: 7,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
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
