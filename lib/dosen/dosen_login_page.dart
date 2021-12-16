import 'package:flutter/material.dart';
import 'package:project_lms_teknik_sipil/widget/loginCardTitle.dart';
import 'package:project_lms_teknik_sipil/widget/namaDanLogoPolinema.dart';

class DosenLogin extends StatefulWidget {
  const DosenLogin({Key? key}) : super(key: key);

  @override
  dosenLoginPage createState() => dosenLoginPage();
}

class dosenLoginPage extends State<DosenLogin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlueAccent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          backgroundColor: Colors.lightBlueAccent,
          body: Column(
            children: [
              logoDanNamaPolinema(),
              SizedBox(
                height: 75,
              ),
              Expanded(
                  child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 275,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            loginCardTitle(),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.person_outline),
                                      Expanded(
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: TextFormField(
                                            maxLines: 1,
                                            decoration: const InputDecoration(
                                                label: Text("Nama Pengguna"),
                                                border: InputBorder.none,
                                                filled: true),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Mohon Isi Nama Pengguna!';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.password_outlined),
                                      Expanded(
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: TextFormField(
                                            maxLines: 1,
                                            obscureText: true,
                                            autocorrect: false,
                                            decoration: const InputDecoration(
                                              label: Text("Password"),
                                              border: InputBorder.none,
                                              filled: true,
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Mohon Isi Password!';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: RaisedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.pushNamed(context, '/home-dosen');
                                  }
                                },
                                child: Text(
                                  "Masuk",
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
                    ],
                  ),
                ),
              )),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: Text(
                  "Copyright",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
