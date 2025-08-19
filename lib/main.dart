import 'package:flutter/material.dart';
import 'package:tugas_13flutter/botnav/botnav.dart';
import 'package:tugas_13flutter/login/login.dart';
import 'package:tugas_13flutter/splash%20screen/splash.dart';

void main() {
  //   initializeDateFormatting("id_ID");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 3, 3, 3),
        ),
      ),
      initialRoute: Day16SplashScreen.id,
      routes: {
        "/login": (context) => login1(),
        Day16SplashScreen.id: (context) => Day16SplashScreen(),
        // Day7GridView.id: (context) => Day7GridView(),
        Botnav1.id: (context) => Botnav1(),
      },
      // home: Day16SplashScreen(),
    );
    // Navigator.pushNamed(context, '/Tugas6');
    // return MaterialApp(
    //   initialRoute: '/',
    //   routes: {
    //     '/': (context) => Tugas6(),
    //     '/Tugastes': (context) => Tugastes(),
    //   },
    // );
  }
}
