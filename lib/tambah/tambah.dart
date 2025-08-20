import 'package:flutter/material.dart';
import 'package:tugas_13flutter/model/question.dart';
import 'package:tugas_13flutter/sqflite/db_helper.dart';

class Tambah1 extends StatefulWidget {
  const Tambah1({super.key});

  @override
  State<Tambah1> createState() => _Tambah1State();
}

class _Tambah1State extends State<Tambah1> {
  final TextEditingController pertanyaanController = TextEditingController();
  final TextEditingController jawabanController = TextEditingController();
  bool isLoading = false;
  // List<Question1> pertanyaan = [];
  @override
  // void initState() {
  //   super.initState();
  //   getQuestion();
  // }
  // Future<void> getQuestion() async {
  //   final datapertanyaan = await DbHelper.getAllQuestion();
  //   print(datapertanyaan);
  //   setState(() {
  //     pertanyaan = datapertanyaan;
  //   });
  // }
  // final TextEditingController _jawabanController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void registerQuestion() async {
      isLoading = true;
      setState(() {});
      final pertanyaan = pertanyaanController.text.trim();
      final jawaban = jawabanController.text.trim();

      if (pertanyaan.isEmpty || jawaban.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Pertanyaan dan jawaban tidak boleh kosong"),
          ),
        );
        isLoading = false;
        return;
      }
      final question = Question1(pertanyaan: pertanyaan, jawaban: jawaban);
      await DbHelper.registerQuestion(question);
      Future.delayed(const Duration(seconds: 1)).then((value) {
        isLoading = false;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Berhasil Daftar")));
      });
      setState(() {});
      isLoading = false;
    }

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
            // physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Image(
                  width: 200,
                  height: 200,
                  image: AssetImage("assets/images/tambah.png.png"),
                ),

                Center(
                  child: Text(
                    "Ketik Pertanyaanmu Disini, Yuk!",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      // fontFamily: "Gilroy",
                    ),
                  ),
                ),
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
                        // Text(
                        //   "わたし",
                        //   style: TextStyle(
                        //     fontSize: 40,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.white,
                        //   ),
                        // ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: pertanyaanController,
                          decoration: InputDecoration(
                            hintText: "Masukkan pertanyaan...",
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.9),
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
                        SizedBox(height: 20),
                        TextFormField(
                          controller: jawabanController,
                          decoration: InputDecoration(
                            hintText: "Masukkan jawaban...",
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.9),
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
                        ElevatedButton(
                          onPressed: () {
                            registerQuestion();
                          },
                          child: Text("Simpan Data"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
