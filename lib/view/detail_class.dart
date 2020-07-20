import 'package:flutter/material.dart';
import 'package:submission_dicoding/model/kelas.dart';
import '../utils/colors.dart';

class DetailClass extends StatelessWidget {
  final Kelas kelas;
  DetailClass({this.kelas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: kelas.banner,
            child: Material(
              child: InkWell(child: Image.asset(kelas.banner)),
            ),
          ),
          BoxDeskripsi(
            dataKelas: kelas,
          ),
        ],
      ),
    );
  }
}

class BoxDeskripsi extends StatelessWidget {
  final Kelas dataKelas;
  BoxDeskripsi({this.dataKelas});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(top: 160),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 40, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // hero animation (image)
                Hero(
                  tag: dataKelas.nama,
                  child: Material(
                    child: InkWell(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(dataKelas.icon, width: 60.0),
                      ),
                    ),
                  ),
                ),

                // spacing
                SizedBox(width: 10.0),

                // flex column
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        dataKelas.nama,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: darkColor,
                            fontFamily: 'Oxygen'),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Estimasi : ${dataKelas.estimasi} jam',
                        style: TextStyle(
                          color: darkColor,
                          fontFamily: 'Oxygen',
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Deskripsi kelas :',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Oxygen',
                color: darkColor,
              ),
            ),
            SizedBox(height: 5),
            Text(
              dataKelas.deskripsi,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Oxygen',
                color: darkColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
