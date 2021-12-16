import 'package:flutter/material.dart';
import 'package:project_lms_teknik_sipil/dosen/dosen_announcement_page.dart';
import 'package:project_lms_teknik_sipil/dosen/dosen_another_menu.dart';
import 'package:project_lms_teknik_sipil/dosen/dosen_login_page.dart';
import 'package:project_lms_teknik_sipil/dosen/dosen_home_page.dart';
import 'package:project_lms_teknik_sipil/dosen/jadwal_mengajar/dosen_jadwal_page.dart';
import 'package:project_lms_teknik_sipil/dosen/jurnal_skripsi/jurnal_skripsi_dosen.dart';
import 'package:project_lms_teknik_sipil/dosen/kelas/kelas_dosen.dart';
import 'package:project_lms_teknik_sipil/dosen/pemangkatan/pemangkatan_dosen.dart';
import 'package:project_lms_teknik_sipil/dosen/presensi/presensi_dosen.dart';
import 'package:project_lms_teknik_sipil/dosen/surat_tugas/surat_tugas_dosen.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/beasiswa/mahasiswa_info_beasiswa_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/biodataDosen/mahasiswa_biodata_detail_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/biodataDosen/mahasiswa_biodata_dosen_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/biodataDosen/mahasiswa_list_dosen_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/krs/mahasiswaKrsPage.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/kuesioner/mahasiswaKuesionerPage.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_announcement_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_another_menu_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_home_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/mahasiswa_login_page.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/tingkatAkhir/mahasiswaTingkatAkhirPage.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/tingkatAkhir/mahasiswaTingkatAkhirDataPklPage.dart';
import 'package:project_lms_teknik_sipil/mahasiswa/ukt/mahasiswaUktPage.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'LMS Teknik Sipil Polinema',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/login-dosen': (context) => const DosenLogin(),
        '/login-mahasiswa': (context) => const MahasiswaLogin(),
        '/home-mahasiswa': (context) => const MahasiswaHome(),
        '/announcement-mahasiswa': (context) => const MahasiswaAnnouncement(),
        '/another-menu-mahasiswa': (context) => const MahasiswaAnotherMenu(),
        '/tingkat-akhir-mahasiswa': (context) => const MahasiswaTingkatAkhir(),
        '/krs-mahasiswa': (context) => const MahasiswaKrs(),
        '/ukt-mahasiswa': (context) => const MahasiswaUkt(),
        '/kuisioner-mahasiswa': (context) => const MahasiswaKuisioner(),
        '/info-beasiswa-mahasiswa': (context) => const MahasiswaInfoBeasiswa(),
        '/bio-dosen-mahasiswa': (context) => const MahasiswaBiodataDosen(),
        '/bio-detail-mahasiswa': (context) =>
            const MahasiswaDetailBiodataDosen(),
        '/list-dosen-mahasiswa': (context) => const MahasiswaListDosen(),
        '/tingkat-akhir-pkl-mahasiswa': (context) =>
            const MahasiswaTingkatAkhir(),
        '/home-dosen': (context) => const dosen_home(),
        '/announcement-dosen': (context) => const DosenAnnouncement(),
        '/another-menu-dosen': (context) => const DosenAnotherMenu(),
        '/jadwal-dosen': (context) => const DosenJadwal(),
        '/jurnal-skripsi-dosen': (context) => const DosenJurnalSkripsi(),
        '/kelas-dosen': (context) => const DosenKelas(),
        '/pemangkatan-dosen': (context) => const DosenPemangkatan(),
        '/presensi-dosen': (context) => const DosenPresensi(),
        '/surat-tugas-dosen': (context) => const DosenSuratTugas(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.lightBlueAccent,
            body: Container(
              margin: const EdgeInsets.only(top: 125),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [

                      Text(
                        "SISTEM AKADEMIK",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    height: 200,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Masuk Sebagai",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 200,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login-dosen');
                            },
                            child: Text(
                              "Dosen",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login-mahasiswa');
                            },
                            child: Text(
                              "Mahasiswa",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Copyright",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )));
  }
}

// class LoginPages extends StatefulWidget {
//   const LoginPages({Key? key}) : super(key: key);

//   @override
//   LoginPageStates createState() => LoginPageStates();
// }

// class LoginPageStates extends State<LoginPages>{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold()
//   }



