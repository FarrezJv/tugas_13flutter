// import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tugas_13flutter/model/question.dart';
import 'package:tugas_13flutter/model/user.dart';

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'login.db'),
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY, email TEXT, password TEXT, name TEXT)',
        );
        await db.execute(
          'CREATE TABLE questions(id INTEGER PRIMARY KEY, pertanyaan TEXT, jawaban TEXT)',
        );
      },
      version: 1,
    );
  }

  //----------User----------
  static Future<void> registerUser(User user) async {
    final db = await databaseHelper();
    await db.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<User?> loginUser(String email, String password) async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (results.isNotEmpty) {
      return User.fromMap(results.first);
    }
    return null;
  }

  static Future<List<User>> getAllUsers() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('users');
    return results.map((e) => User.fromMap(e)).toList();
  }

  static Future<void> updateUser(User user) async {
    final db = await databaseHelper();
    await db.update(
      'users',
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> deleteUser(int id) async {
    final db = await databaseHelper();
    await db.delete('users', where: 'id = ?', whereArgs: [id]);
  }

  //----------Questions----------
  static Future<void> registerQuestion(Question1 question) async {
    final db = await databaseHelper();
    await db.insert(
      'questions',
      question.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Question1>> getAllQuestion() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('questions');
    return results.map((e) => Question1.fromMap(e)).toList();
  }

  static Future<void> updateQuestion(Question1 question) async {
    final db = await databaseHelper();
    await db.update(
      'questions',
      question.toMap(),
      where: 'id = ?',
      whereArgs: [question.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> deleteQuestion(int id) async {
    final db = await databaseHelper();
    await db.delete('questions', where: 'id = ?', whereArgs: [id]);
  }
}
