import 'package:epasien/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () => Get.toNamed(Routes.HOME),
                  icon: Icon(
                    Icons.addchart_outlined,
                  ),
                  label: Text("Pasien"),
                ),
                ElevatedButton.icon(
                  onPressed: () => Get.toNamed(Routes.HOME),
                  icon: Icon(Icons.addchart_outlined),
                  label: Text("Pasien"),
                ),
                ElevatedButton.icon(
                  onPressed: () => Get.toNamed(Routes.HOME),
                  icon: Icon(Icons.addchart_outlined),
                  label: Text("Pasien"),
                ),
                ElevatedButton.icon(
                  onPressed: () => Get.toNamed(Routes.HOME),
                  icon: Icon(Icons.addchart_outlined),
                  label: Text("Pasien"),
                ),
              ],
            ),
          ),
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
                    Icon(Icons.search, color: Colors.black45),
                    Text('Search', style: TextStyle(fontSize: 12.0))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.shop, color: Colors.black45),
                    Text(
                      'Wishlist',
                      style: TextStyle(fontSize: 12.0),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.black45,
                    ),
                    Text('Cart', style: TextStyle(fontSize: 12.0))
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
