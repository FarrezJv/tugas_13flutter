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
  List<Question1> question = [];

  @override
  void initState() {
    super.initState();
    getQuestion();
  }

  Future<void> getQuestion() async {
    final dataQuestion = await DbHelper.getAllQuestion();
    setState(() {
      question = dataQuestion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.indigo),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            "assets/images/pngwing.com.png",
            fit: BoxFit.contain,
          ),
        ),
        actions: const [
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
          // Bar Chart Section
          SizedBox(
            height: 250,
            width: double.infinity,
            child: question.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.center,
                        maxY: question.length.toDouble() + 2,
                        barTouchData: BarTouchData(enabled: true),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                return const Text(
                                  'Data',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                );
                              },
                              reservedSize: 30,
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: true),
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        borderData: FlBorderData(show: true),
                        barGroups: [
                          BarChartGroupData(
                            x: 0,
                            barRods: [
                              BarChartRodData(
                                toY: question.length.toDouble(),
                                color: Colors.blue,
                                width: 40,
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
          const SizedBox(height: 20),
          // Text Total Data
          Text(
            "Jumlah data: ${question.length}",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          // Logout Button
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
                child: const Text(
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
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
