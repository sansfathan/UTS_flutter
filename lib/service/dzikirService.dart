// ignore: file_names

// ignore: service
import 'package:flutter/services.dart';
import '../models/dataDzikir.dart';


class DzikirService {
  getDzikirPagi() async {
    //proses 
    final String response = await rootBundle.loadString('assets/json/dzikir.json');

    DataDzikir data = dataDzikirFromJson(response);


    return data.dzikir.dzikirPagi;
  }
  getDzikirSore() async {
    //proses 
    final String response = await rootBundle.loadString('assets/json/dzikir.json');

    DataDzikir data = dataDzikirFromJson(response);


    return data.dzikir.dzikirSore;
  }
  getDzikirSholat() async {
    //proses 
    final String response = await rootBundle.loadString('assets/json/dzikir.json');

    DataDzikir data = dataDzikirFromJson(response);


    return data.dzikir.dzikirSholat;
  }
}



