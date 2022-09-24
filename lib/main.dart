 import 'package:flutter/material.dart';
import 'package:uts_soal2/detailDzikr.dart';
import 'package:uts_soal2/homepage.dart';
import 'package:uts_soal2/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Dzikr Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/splashScreen',
      routes: {
        // ignore: prefer_const_constructors
        '/splashScreen': (context) => SplashScreen(),
        // ignore: prefer_const_constructors
        '/': (context) => MyHomePage(),
        '/DetaiDzikir': (context) => DetailDzikir(status:  ModalRoute.of(context)?.settings.arguments as String,),
      }
    );

  }
}



