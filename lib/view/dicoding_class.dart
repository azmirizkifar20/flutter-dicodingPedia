import 'package:flutter/material.dart';
import 'package:submission_dicoding/utils/colors.dart';
import 'package:submission_dicoding/model/kelas.dart';
import 'package:submission_dicoding/model/learning_path.dart';
import 'package:submission_dicoding/view/detail_class.dart';

class DicodingClass extends StatelessWidget {
  final LearningPath data;
  const DicodingClass({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: toscaColor,
      body: Container(
        child: Column(
          children: <Widget>[
            ProfileHome(
              data: data,
            ),
            BoxListLearning(
              listPilihan:
                  listKelas.where((e) => e.platform == data.platform).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileHome extends StatelessWidget {
  final LearningPath data;
  const ProfileHome({this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 65.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Hero(
                    tag: data.platform,
                    child: Material(
                      color: Colors.white,
                      child: InkWell(
                        child: Image.asset(
                          data.icon,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.nama,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 3.0)),
                  Text(
                    'Menjadi seorang ${data.nama}',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white54,
                      fontFamily: 'Oxygen',
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BoxListLearning extends StatelessWidget {
  final List<Kelas> listPilihan;
  BoxListLearning({this.listPilihan});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 30.0, right: 20.0),
            children: listPilihan.map((e) {
              return InkWell(
                child: CardView(dataKelas: e),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailClass(
                        kelas: e,
                      ),
                    )),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  final Kelas dataKelas;
  const CardView({this.dataKelas});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Row(
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

          // padding
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),

          // flex column
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  dataKelas.nama,
                  style: TextStyle(fontSize: 16.0, color: darkColor),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                Text(
                  'Level : ${dataKelas.level}',
                  style: TextStyle(color: darkColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
