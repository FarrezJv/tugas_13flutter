import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Question1 {
  final String pertanyaan;
  final String jawaban;
  final int? id;
  Question1({this.id, required this.pertanyaan, required this.jawaban});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pertanyaan': pertanyaan,
      'jawaban': jawaban,
      'id': id,
    };
  }

  factory Question1.fromMap(Map<String, dynamic> map) {
    return Question1(
      pertanyaan: map['pertanyaan'] as String,
      jawaban: map['jawaban'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Question1.fromJson(String source) =>
      Question1.fromMap(json.decode(source) as Map<String, dynamic>);
}
