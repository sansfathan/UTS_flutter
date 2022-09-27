// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uts_soal2/detailDzikr.dart';
// ignore: unused_import
import 'package:uts_soal2/splash_screen.dart';

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get data => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.brown.shade400,
            Colors.brown.shade400,
            Colors.brown.shade400,
          ])),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 40,
                ),
                Padding(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          // ignore: prefer_const_constructors
                          Text(
                            "Dzikir Pagi dan Petang Serta Dzikir Setelah Sholat Fardu",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 10,
                          ),
                          // ignore: prefer_const_constructors
                          Text(
                            "Kumpulan Dzikir pagi dan Petang, serta kumpulan doa setelah Sholat Fardu",
                            // ignore: prefer_const_constructors
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          DzikirList(context, data)
                        ],
                      ),
                    )),
                // ignore: prefer_const_constructors
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget DzikirList(context, data) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(4),

          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.9,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color: Colors.brown[100],
              // ignore: prefer_const_constructors
              borderRadius: BorderRadius.only(
                  // ignore: prefer_const_constructors
                  topLeft: Radius.circular(50),
                  // ignore: prefer_const_constructors
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 7, bottom: 7),
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.8,
                    // ignore: prefer_const_constructors
                    child: Image.network(
                        "https://www.radiorodja.com/wp-content/uploads/2019/12/Download-mp3-kajian-Keutamaan-Doa-dan-Dzikir.jpg"),

                    decoration: BoxDecoration(
                        color: Colors.brown[400],
                        borderRadius: BorderRadius.circular(10),

                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                              // ignore: prefer_const_constructors
                              color: Color.fromRGBO(225, 95, 27, .3),
                              blurRadius: 20,
                              // ignore: prefer_const_constructors
                              offset: Offset(0, 10))
                        ]),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 7),
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.4,
                        // ignore: prefer_const_constructors

                        decoration: BoxDecoration(
                            color: Colors.brown[400],
                            borderRadius: BorderRadius.circular(10),

                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              // ignore: prefer_const_constructors
                              BoxShadow(
                                  // ignore: prefer_const_constructors
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  // ignore: prefer_const_constructors
                                  offset: Offset(0, 10))
                            ]),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/DetaiDzikir',
                                arguments: "Dzikir Pagi");
                          },
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              SizedBox(height: 70),
                              // ignore: prefer_const_constructors
                              Text(
                                "Dzikir pagi",
                                textAlign: TextAlign.center,
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                // ignore: prefer_const_constructors

                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(),
                                // ignore: prefer_const_constructors
                              ),
                              Container(
                                // ignore: prefer_const_constructors
                                padding: EdgeInsets.all(10),
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // batas dzikir pagi
                      // ignore: prefer_const_constructors

                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.4,
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.brown[400],
                            borderRadius: BorderRadius.circular(10),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              // ignore: prefer_const_constructors
                              BoxShadow(
                                  // ignore: prefer_const_constructors
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  // ignore: prefer_const_constructors
                                  offset: Offset(0, 10))
                            ]),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/DetaiDzikir',
                                arguments: "Dzikir Sore");
                          },
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 50),
                              // ignore: prefer_const_constructors
                              Text(
                                "Dzikir Sore",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                // ignore: prefer_const_constructors

                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(),
                                // ignore: prefer_const_constructors
                              ),
                              Container(
                                // ignore: prefer_const_constructors
                                padding: EdgeInsets.all(10),
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //batas dzikir sore
                    ],
                  ),

                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.brown[400],
                        borderRadius: BorderRadius.circular(10),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                              // ignore: prefer_const_constructors
                              color: Color.fromRGBO(225, 95, 27, .3),
                              blurRadius: 20,
                              // ignore: prefer_const_constructors
                              offset: Offset(0, 10))
                        ]),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/DetaiDzikir',
                            arguments: "Dzikir Ba'da Sholat");
                      },
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 20),
                          // ignore: prefer_const_constructors
                          Text(
                            "Dzikir Setelah Sholat Fardu",
                            // ignore: prefer_const_constructors
                            style: TextStyle(fontSize: 20,color:Colors.white),
                          ),
                          Container(
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(),
                            // ignore: prefer_const_constructors
                          ),
                          Container(
                            // ignore: prefer_const_constructors
                            padding: EdgeInsets.all(5),
                            // ignore: prefer_const_constructors
                           
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
      )
    ],
  );
}
