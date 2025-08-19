import 'package:flutter/material.dart';
import 'package:tugas_13flutter/model/question.dart';
import 'package:tugas_13flutter/sqflite/db_helper.dart';

class Review1 extends StatefulWidget {
  const Review1({super.key});
  @override
  State<Review1> createState() => _Review1State();
}

class _Review1State extends State<Review1> {
  List<Question1> question = [];
  @override
  void initState() {
    super.initState();
    getQuestion();
  }

  final TextEditingController pertanyaanController = TextEditingController();
  // final TextEditingController nameController = TextEditingController();
  final TextEditingController jawabanController = TextEditingController();

  Future<void> getQuestion() async {
    final dataQuestion = await DbHelper.getAllQuestion();
    print(dataQuestion);
    setState(() {
      question = dataQuestion;
    });
  }

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
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: question.length,
            itemBuilder: (BuildContext context, int index) {
              final dataquestion = question[index];
              return ListTile(
                title: Text(dataquestion.pertanyaan),
                subtitle: Text(dataquestion.jawaban),
              );
            },
            // return Container(
            //   width: double.infinity,
            //   height: 120,
            //   padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       colors: [Colors.orange.shade300, Colors.green.shade400],
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomCenter,
            //     ),
            //     borderRadius: BorderRadius.circular(20),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.black26,
            //         blurRadius: 8,
            //         offset: Offset(0, 4),
            //       ),
            //     ],
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         "Apa Bahasa Jepangnya Rubah?",
            //         style: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white,
            //         ),
            //       ),
            //       Text(
            //         "Jawaban: きつね atau kitsune",
            //         style: TextStyle(
            //           fontSize: 15,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
