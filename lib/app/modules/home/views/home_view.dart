import 'package:epasien/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color.fromARGB(255, 13, 210, 224),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.home),
                    Text('Home', style: TextStyle(fontSize: 12.0))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.history, color: Colors.black45),
                    Text('Riwayat', style: TextStyle(fontSize: 12.0))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.assignment_return_sharp, color: Colors.black45),
                    Text(
                      'Antrian',
                      style: TextStyle(fontSize: 12.0),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      color: Colors.black45,
                    ),
                    Text('Profil', style: TextStyle(fontSize: 12.0))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 60);

    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
