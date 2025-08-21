import 'package:flutter/material.dart';

class Jawaban1 extends StatefulWidget {
  final String question;
  final String answer;

  const Jawaban1({super.key, required this.question, required this.answer});

  @override
  State<Jawaban1> createState() => _Jawaban1State();
}

class _Jawaban1State extends State<Jawaban1> {
  bool showAnswer = false;

  void toggleCard() {
    setState(() {
      showAnswer = !showAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: toggleCard,
      child: Container(
        height: 120,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: showAnswer
                ? [Colors.indigo, Colors.blueAccent]
                : [Colors.orange.shade300, Colors.green.shade400],
            begin: showAnswer ? Alignment.topLeft : Alignment.topCenter,
            end: showAnswer ? Alignment.bottomRight : Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            showAnswer ? widget.answer : widget.question,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
