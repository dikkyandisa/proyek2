import 'package:flutter/material.dart';

class loginCardTitle extends StatelessWidget {
  const loginCardTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Selamat Datang di SISTEM AKADEMIK",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 17),
        ),
        Text(
          "Nama PTN",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black26, fontSize: 12),
        ),
      ],
    );
  }
}
