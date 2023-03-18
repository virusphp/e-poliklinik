import 'package:epasien/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              padding: EdgeInsets.only(top: 25),
              height: 100,
              child: Image.asset(
                "assets/logo/logo-only.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            const TextField(
              decoration: InputDecoration(
                label: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ),
                border: InputBorder.none,
                fillColor: Color.fromARGB(255, 224, 223, 223),
                filled: true,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                label: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ),
                border: InputBorder.none,
                fillColor: Color.fromARGB(255, 224, 223, 223),
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
                child: Text("Log in"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 13, 210, 224),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 20)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Forgot Password?"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 1,
                    color: Color(0xFFC7C9D9),
                  ),
                ),
                Text(
                  "or",
                  style: TextStyle(
                    color: Color(0xFFC7C9D9),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 1,
                    color: Color(0xFFC7C9D9),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/google.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Log in with Google"),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 235, 234, 234),
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
