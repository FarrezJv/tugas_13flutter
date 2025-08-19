import 'package:flutter/material.dart';
import 'package:tugas_13flutter/extension/navigation.dart';
import 'package:tugas_13flutter/login/login.dart';
import 'package:tugas_13flutter/shared%20preference/shared.dart';

class Statistic1 extends StatefulWidget {
  const Statistic1({super.key});

  @override
  State<Statistic1> createState() => _Statistic1State();
}

class _Statistic1State extends State<Statistic1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [Colors.blue, Colors.purple],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            // ),
            color: Colors.indigo,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            "assets/images/pngwing.com.png",
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.volume_down, size: 40, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.account_circle, size: 40, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.settings, size: 40, color: Colors.white),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          SizedBox(
            width: double.infinity,
            // decoration: BoxDecoration(color: Colors.indigo),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Colors.indigo,
                  ),
                ),
                onPressed: () {
                  PreferenceHandler.removeLogin();
                  context.pushReplacementNamed(login1.id);
                },
                child: Text(
                  "Keluar Dari Aplikasi.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
