import 'package:flutter/material.dart';
import 'package:submission_dicoding/utils/colors.dart';

class ProfileDetail extends StatelessWidget {
  final String nama, gambar;
  ProfileDetail({this.nama, this.gambar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile $nama'),
        backgroundColor: toscaColor,
      ),
      body: Container(
        child: Center(
          child: Hero(
            tag: gambar,
            child: Material(
                child: InkWell(
              child: Image.asset(gambar, fit: BoxFit.fill),
            )),
          ),
        ),
      ),
    );
  }
}
