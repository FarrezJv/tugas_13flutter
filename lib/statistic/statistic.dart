import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tugas_13flutter/extension/navigation.dart';
import 'package:tugas_13flutter/login/login.dart';
import 'package:tugas_13flutter/model/question.dart';
import 'package:tugas_13flutter/shared%20preference/shared.dart';
import 'package:tugas_13flutter/sqflite/db_helper.dart';

class Statistic1 extends StatefulWidget {
  const Statistic1({super.key});

  @override
  State<Statistic1> createState() => _Statistic1State();
}

class _Statistic1State extends State<Statistic1> {
  // List<String> titles = ['Hadir', 'Izin', 'Sakit', 'Alpha'];
  // List<Color> colors = [Colors.blue, Colors.amber, Colors.green, Colors.red];
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

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(show: true),
      titlesData: FlTitlesData(
        bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
      ),
      borderData: FlBorderData(show: true),
      minX: 0,
      maxX: 1, // cuma 1 titik
      minY: 0,
      maxY: question.isEmpty ? 1 : question.length.toDouble(),
      lineBarsData: [
        LineChartBarData(
          spots: [FlSpot(0, question.isEmpty ? 0 : question.length.toDouble())],
          isCurved: true,
          barWidth: 4,
          color: Colors.blue,
          dotData: FlDotData(show: true),
          belowBarData: BarAreaData(
            show: true,
            color: Colors.blue.withOpacity(0.3),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

      body: Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: question.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: LineChart(mainData()),
                  ),
          ),
          const SizedBox(height: 20),
          Text(
            "Jumlah data: ${question.length}",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          Spacer(),
          SizedBox(
            width: double.infinity,
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
