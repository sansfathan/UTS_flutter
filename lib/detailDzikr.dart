// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uts_soal2/models/dataDzikir.dart';
import 'package:uts_soal2/service/dzikirService.dart';

// ignore: use_key_in_widget_constructors
class DetailDzikir extends StatefulWidget {
  final String status;

  DetailDzikir({required this.status});
  @override
  State<DetailDzikir> createState() => _DetailDzikirState();
}

class _DetailDzikirState extends State<DetailDzikir> {
  List<DzikirPagiElement> _dzikirData = [];

  void getDzikir() {
    if (widget.status == 'Dzikir Pagi') {
      DzikirService().getDzikirPagi().then((value) {
        setState(() {
          _dzikirData = value;
        });
      });
    } else if (widget.status == 'Dzikir Pagi') {
    } else {}

    if (widget.status == 'Dzikir Sore') {
      DzikirService().getDzikirSore().then((value) {
        setState(() {
          _dzikirData = value;
        });
      });
    } else if (widget.status == 'Dzikir Sore') {
    } else {}
    if (widget.status == "Dzikir Ba'da Sholat") {
      DzikirService().getDzikirSholat().then((value) {
        setState(() {
          _dzikirData = value;
        });
      });
    } else if (widget.status == 'Dzikir bada Sholat') {
    } else {}
  }

  @override
  void initState() {
    getDzikir();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(widget.status),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(right: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.brown.shade700,
              Colors.brown.shade400,
              Colors.brown.shade400,
            ])),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(_dzikirData.length, (index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.9,
                  // // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      color: Colors.white,
                      //     // ignore: prefer_const_constructors
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(
                          //         // ignore: prefer_const_constructors
                          topLeft: Radius.circular(50),
                          //         // ignore: prefer_const_constructors
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      
                      Padding(padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10)),
                      
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Dzkir ke ${index + 1}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Text(
                        _dzikirData[index].nama,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30,top: 10),
                        child: Text(
                          "Di baca ${_dzikirData[index].diBaca}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                          
                          _dzikirData[index].bacaanArab,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 25),
                        child: Text(
                          _dzikirData[index].bacaanLatin,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        '" ${_dzikirData[index].arti} "',
                        style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                );
              })),
            )),
      ),
    );
  }
}
