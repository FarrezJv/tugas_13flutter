import 'package:flutter/material.dart';
import 'package:tugas_13flutter/widgets/jawaban.dart';

class BerandaData {
  static final int jumlahPertanyaan = 11;
}

class Beranda1 extends StatefulWidget {
  const Beranda1({super.key});
  static const id = "/beranda";
  @override
  State<Beranda1> createState() => _Beranda1State();
}

class _Beranda1State extends State<Beranda1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Colors.indigo),
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
          image: DecorationImage(
            image: AssetImage("assets/images/background toy.jfif"),
            fit: BoxFit.contain,
          ),
        ),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Jawaban1(
                    question: "いぬ adalah bahasa Jepang dari hewan?",
                    answer: "Anjing",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Jawaban1(
                    question: "Apa Bahasa Jepangnya Rubah?",
                    answer: "きつね atau kitsune",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Jawaban1(
                    question: "へび Romaji dari kata ini adalah?",
                    answer: "hebi (ular)",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Jawaban1(question: "ねこは なに？", answer: "neko (kucing)"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Jawaban1(question: "うまは なに？", answer: "uma (kuda)"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Jawaban1(
                    question: "Apa bahasa Jepang “ikan”?",
                    answer: "さかな (sakana)",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Jawaban1(
                    question: "Apa bahasa Jepang “burung”?",
                    answer: "とり (tori)",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Jawaban1(
                    question: "さる は なに？",
                    answer: "saru (monyet)",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Jawaban1(question: "しか は なに？", answer: "shika (rusa)"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Jawaban1(
                    question: "とら は なに？",
                    answer: "tora (harimau)",
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.all(20),
                //   child: Container(
                //     width: double.infinity,
                //     height: 120,
                //     padding: const EdgeInsets.all(16),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [Colors.orange.shade300, Colors.green.shade400],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //       ),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 8,
                //           offset: Offset(0, 4),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "いぬ adalah bahasa jepang dari hewan?",
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //         Text(
                //           "Jawaban: Anjing",
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //     right: 20,
                //     bottom: 20,
                //   ),
                //   child: Container(
                //     width: double.infinity,
                //     height: 120,
                //     padding: const EdgeInsets.only(
                //       left: 16,
                //       right: 16,
                //       bottom: 16,
                //     ),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [Colors.orange.shade300, Colors.green.shade400],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //       ),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 8,
                //           offset: Offset(0, 4),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "Apa Bahasa Jepangnya Rubah?",
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //         Text(
                //           "Jawaban: きつね atau kitsune",
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //     right: 20,
                //     bottom: 20,
                //   ),
                //   child: Container(
                //     width: double.infinity,
                //     height: 120,
                //     padding: const EdgeInsets.only(
                //       left: 16,
                //       right: 16,
                //       bottom: 16,
                //     ),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [Colors.orange.shade300, Colors.green.shade400],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //       ),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 8,
                //           offset: Offset(0, 4),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "へび Romaji dari kata ini adalah?",
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //         Text(
                //           "Jawaban: hebi yang artinya adalah ular",
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //     right: 20,
                //     bottom: 20,
                //   ),
                //   child: Container(
                //     width: double.infinity,
                //     height: 120,
                //     padding: const EdgeInsets.only(
                //       left: 16,
                //       right: 16,
                //       bottom: 16,
                //     ),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [Colors.orange.shade300, Colors.green.shade400],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //       ),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 8,
                //           offset: Offset(0, 4),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "ねこは なに？",
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //         Text(
                //           "Jawaban: neko yang artinya adalah kucing",
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //     right: 20,
                //     bottom: 20,
                //   ),
                //   child: Container(
                //     width: double.infinity,
                //     height: 120,
                //     padding: const EdgeInsets.only(
                //       left: 16,
                //       right: 16,
                //       bottom: 16,
                //     ),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [Colors.orange.shade300, Colors.green.shade400],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //       ),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 8,
                //           offset: Offset(0, 4),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "うまは なに？",
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //         Text(
                //           "Jawaban: uma, yang artinya adalah kuda",
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //     right: 20,
                //     bottom: 20,
                //   ),
                //   child: Container(
                //     width: double.infinity,
                //     height: 120,
                //     padding: const EdgeInsets.only(
                //       left: 16,
                //       right: 16,
                //       bottom: 16,
                //     ),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [Colors.orange.shade300, Colors.green.shade400],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //       ),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 8,
                //           offset: Offset(0, 4),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "Apa bahasa Jepang “ikan”?",
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //         Text(
                //           "Jawaban: さかな yang di baca sakana",
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //     right: 20,
                //     bottom: 20,
                //   ),
                //   child: Container(
                //     width: double.infinity,
                //     height: 120,
                //     padding: const EdgeInsets.only(
                //       left: 16,
                //       right: 16,
                //       bottom: 16,
                //     ),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [Colors.orange.shade300, Colors.green.shade400],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //       ),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 8,
                //           offset: Offset(0, 4),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "Apa bahasa Jepang “burung”?",
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //         Text(
                //           "Jawaban: とり yang di baca tori",
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //     right: 20,
                //     bottom: 20,
                //   ),
                //   child: Container(
                //     width: double.infinity,
                //     height: 120,
                //     padding: const EdgeInsets.only(
                //       left: 16,
                //       right: 16,
                //       bottom: 16,
                //     ),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [Colors.orange.shade300, Colors.green.shade400],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //       ),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 8,
                //           offset: Offset(0, 4),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "さる は なに？",
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //         Text(
                //           " Jawaban: saru atau monyet",
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //     right: 20,
                //     bottom: 20,
                //   ),
                //   child: Container(
                //     width: double.infinity,
                //     height: 120,
                //     padding: const EdgeInsets.only(
                //       left: 16,
                //       right: 16,
                //       bottom: 16,
                //     ),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [Colors.orange.shade300, Colors.green.shade400],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //       ),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 8,
                //           offset: Offset(0, 4),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "しか は なに？",
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //         Text(
                //           "Jawaban: shika yang artinya rusa",
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //     right: 20,
                //     bottom: 20,
                //   ),
                //   child: Container(
                //     width: double.infinity,
                //     height: 120,
                //     padding: const EdgeInsets.only(
                //       left: 16,
                //       right: 16,
                //       bottom: 16,
                //     ),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [Colors.orange.shade300, Colors.green.shade400],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //       ),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 8,
                //           offset: Offset(0, 4),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "とら は なに？",
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //         Text(
                //           "Jawaban: tora yang artinya harimau",
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
