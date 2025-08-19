import 'package:flutter/material.dart';
import 'package:tugas_13flutter/botnav/botnav.dart';
import 'package:tugas_13flutter/extension/navigation.dart';
import 'package:tugas_13flutter/login/login.dart';
import 'package:tugas_13flutter/shared%20preference/shared.dart';
import 'package:tugas_13flutter/utils/gambar.dart';

class Day16SplashScreen extends StatefulWidget {
  const Day16SplashScreen({super.key});
  static const id = "/splash_screen";

  @override
  State<Day16SplashScreen> createState() => _Day16SplashScreenState();
}

class _Day16SplashScreenState extends State<Day16SplashScreen> {
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    bool? isLogin = await PreferenceHandler.getLogin();

    Future.delayed(Duration(seconds: 3)).then((value) async {
      print(isLogin);
      if (isLogin == true) {
        context.pushReplacementNamed(Botnav1.id);
      } else {
        context.push(login1());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImage.logo),
              SizedBox(height: 20),
              // Text("Welcome"),
            ],
          ),
        ),
      ),
    );
  }
}
