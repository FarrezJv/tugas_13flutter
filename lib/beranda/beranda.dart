import 'package:flutter/material.dart';

class Beranda1 extends StatefulWidget {
  const Beranda1({super.key});

  @override
  State<Beranda1> createState() => _Beranda1State();
}

class _Beranda1State extends State<Beranda1> {
  final TextEditingController _jawabanController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade400, Colors.orange.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.orange.shade300, Colors.green.shade400],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "わたし",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          // shadows: [
                          //   Shadow(
                          //     color: Colors.black45,
                          //     blurRadius: 5,
                          //     offset: Offset(2, 2),
                          //   ),
                          // ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _jawabanController,
                        decoration: InputDecoration(
                          hintText: "Masukkan jawaban...",
                          filled: true,
                          // fillColor: Colors.white.withOpacity(0.9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.orange,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
