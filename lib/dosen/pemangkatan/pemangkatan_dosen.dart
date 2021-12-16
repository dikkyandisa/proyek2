import 'package:flutter/material.dart';
import 'package:project_lms_teknik_sipil/widget/containerMenu.dart';

class DosenPemangkatan extends StatefulWidget {
  const DosenPemangkatan({Key? key}) : super(key: key);

  @override
  DosenPemangkatanPage createState() => DosenPemangkatanPage();
}

class DosenPemangkatanPage extends State<DosenPemangkatan> {
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
                                        "Program Pemangkatan",
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
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                child: SizedBox(
                                    height: 250,
                                    width: double.infinity,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(0, 10),
                                              )
                                            ]),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text("4A",
                                                  style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontSize: 55,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ]))),
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
                                    Navigator.pushNamed(context, '/home-dosen');
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
