import 'package:flutter/material.dart';
import 'package:tugas_13flutter/beranda/beranda.dart';
import 'package:tugas_13flutter/mode%20review/review.dart';
import 'package:tugas_13flutter/statistic/statistic.dart';
import 'package:tugas_13flutter/tambah/tambah.dart';

class Botnav1 extends StatefulWidget {
  const Botnav1({super.key});
  static const id = "/botnav";

  @override
  State<Botnav1> createState() => _Botnav1State();
}

class _Botnav1State extends State<Botnav1> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Beranda1(),
    Tambah1(),
    Review1(),
    Statistic1(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
              // activeIcon: Icon(Icons.abc_outlined),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: 'Tambah',
            ),
            // BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              label: 'Mode Review',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart),
              label: 'Statistic',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.black,
          onTap: (value) {
            print(value);
            // print("Nilai SelecetedIndex Before : $_selectedIndex");

            // print("Nilai BotNav : $value");
            setState(() {
              _selectedIndex = value;
            });
            // print("Nilai SelecetedIndex After: $_selectedIndex");
          },
          // onTap: _onItemTapped,
        ),
      ),
    );
  }
}
