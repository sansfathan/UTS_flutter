import 'dart:async';
// ignore: unused_import
import 'dart:ffi';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:uts_soal2/movie_detail.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, '/');
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.brown[700],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            child: Center(
              // ignore: prefer_const_constructors
              child: Text(
                "Dzikir Apps",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
        
            ),
           
          )
          // ignore: prefer_const_constructors

          // ignore: prefer_const_constructors
        ],
      ),
    );
  }
}
