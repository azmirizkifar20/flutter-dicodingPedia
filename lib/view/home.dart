import 'package:flutter/material.dart';
import 'package:submission_dicoding/model/kelas.dart';
import 'package:submission_dicoding/model/learning_path.dart';
import 'package:submission_dicoding/view/detail_class.dart';
import 'package:submission_dicoding/view/dicoding_class.dart';
import 'package:submission_dicoding/view/profile.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/colors.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // utils
  String nama1 = 'Muhamad Azmi Rizkifar';
  String nama2 = 'Steve Rogers';
  String email1 = 'm.azmirizkifar20@gmail.com';
  String email2 = 'steverogers@gmail.com';
  String gambar1 = 'images/ajmi.png';
  String gambar2 = 'images/captain.jpg';
  String tempNama = '';
  String tempGambar = '';
  String tempEmail = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // header
              Header(),

              // banner
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  "images/banner.png",
                  fit: BoxFit.fitWidth,
                ),
              ),

              // learning path title
              Title(title: 'Learning Path'),

              // list learning path
              Container(
                height: 148.0,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  scrollDirection: Axis.horizontal,
                  children: listLearningPath.map((e) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DicodingClass(
                              data: e,
                            ),
                          )),
                      child: CardLearningPath(
                        icon: e.icon,
                        platform: e.platform,
                      ),
                    );
                  }).toList(),
                ),
              ),

              // favorite title
              Title(title: 'Favorite Class'),

              // list favorite class
              Container(
                height: 190,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  scrollDirection: Axis.horizontal,
                  children: kelasFavorit.map((e) {
                    return Hero(
                      tag: e.banner,
                      child: Material(
                        color: lightColor,
                        child: InkWell(
                          child: CardFavoriteClass(kelas: e),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailClass(kelas: e),
                              )),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: _appDrawer(),
    );
  }

// ganti user
  void gantiUser() {
    this.setState(() {
      tempGambar = gambar1;
      gambar1 = gambar2;
      gambar2 = tempGambar;

      tempNama = nama1;
      nama1 = nama2;
      nama2 = tempNama;

      tempEmail = email1;
      email1 = email2;
      email2 = tempEmail;
    });
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

// app drawer
  Drawer _appDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // akun
          UserAccountsDrawerHeader(
            accountName: Text(nama1),
            accountEmail: Text(email1),
            currentAccountPicture: GestureDetector(
              child: Hero(
                tag: gambar1,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(gambar1),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileDetail(
                        gambar: gambar1,
                        nama: nama1,
                      ),
                    ));
              },
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://t3.ftcdn.net/jpg/03/21/64/02/240_F_321640237_gHHFy6q0CbWCCVU2DUB7WEZbOpayWjl2.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            otherAccountsPictures: <Widget>[
              GestureDetector(
                onTap: () => gantiUser(),
                child: CircleAvatar(
                  backgroundImage: AssetImage(gambar2),
                ),
              ),
            ],
          ),
          // setting
          InkWell(
            child: ListTile(
              title: Text('Open Website'),
              trailing: Icon(Icons.language),
            ),
            onTap: () => _launchInBrowser('https://www.dicoding.com/'),
          ),
          // close
          InkWell(
            child: ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
            ),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final Function changeTheme;
  Header({this.changeTheme});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: GestureDetector(
              child: Icon(Icons.dehaze, color: darkColor),
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          Spacer(),
          Icon(
            Icons.search,
            color: darkColor,
          ),
          SizedBox(width: 14),
          Icon(
            Icons.notifications_none,
            color: darkColor,
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String title;
  const Title({this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 20, bottom: 5),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 20),
          child: Icon(
            Icons.more_horiz,
            color: Colors.black,
            size: 30.0,
          ),
        )
      ],
    );
  }
}

class CardLearningPath extends StatelessWidget {
  final String icon, platform;
  const CardLearningPath({this.icon, this.platform});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: platform,
                child: Material(
                    color: Colors.white,
                    child: InkWell(child: Image.asset(icon, width: 100))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardFavoriteClass extends StatelessWidget {
  final Kelas kelas;
  const CardFavoriteClass({this.kelas});

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.asset(
        kelas.banner,
        fit: BoxFit.cover,
        height: 180,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 3,
      margin: EdgeInsets.all(8),
    );
  }
}
