// To parse this JSON data, do
//
//     final dataDzikir = dataDzikirFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

DataDzikir dataDzikirFromJson(String str) => DataDzikir.fromJson(json.decode(str));

String dataDzikirToJson(DataDzikir data) => json.encode(data.toJson());

class DataDzikir {
    DataDzikir({
        required this.status,
        required this.message,
        required this.dzikir,
    });

    String status;
    String message;
    Dzikir dzikir;

    factory DataDzikir.fromJson(Map<String, dynamic> json) => DataDzikir(
        status: json["status"],
        message: json["message"],
        dzikir: Dzikir.fromJson(json["dzikir"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "dzikir": dzikir.toJson(),
    };
}

class Dzikir {
    Dzikir({
        required this.dzikirPagi,
        required this.dzikirSore,
        required this.dzikirSholat,
    });

    List<DzikirPagiElement> dzikirPagi;
    List<DzikirPagiElement> dzikirSore;
    List<DzikirPagiElement> dzikirSholat;

    factory Dzikir.fromJson(Map<String, dynamic> json) => Dzikir(
        dzikirPagi: List<DzikirPagiElement>.from(json["dzikirPagi"].map((x) => DzikirPagiElement.fromJson(x))),
        dzikirSore: List<DzikirPagiElement>.from(json["dzikirSore"].map((x) => DzikirPagiElement.fromJson(x))),
        dzikirSholat: List<DzikirPagiElement>.from(json["dzikirSholat"].map((x) => DzikirPagiElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "dzikirPagi": List<dynamic>.from(dzikirPagi.map((x) => x.toJson())),
        "dzikirSore": List<dynamic>.from(dzikirSore.map((x) => x.toJson())),
        "dzikirSholat": List<dynamic>.from(dzikirSholat.map((x) => x.toJson())),
    };
}

class DzikirPagiElement {
    DzikirPagiElement({
        required this.id,
        required this.diBaca,
        required this.nama,
        required this.bacaanArab,
        required this.bacaanLatin,
        required this.arti,
        required this.keterangan,
    });

    int id;
    String diBaca;
    String nama;
    String bacaanArab;
    String bacaanLatin;
    String arti;
    String keterangan;

    factory DzikirPagiElement.fromJson(Map<String, dynamic> json) => DzikirPagiElement(
        id: json["id"],
        diBaca: json["diBaca"],
        nama: json["nama"] == null ? "" :  json["nama"],
        bacaanArab: json["bacaanArab"],
        bacaanLatin: json["bacaanLatin"],
        arti: json["arti"],
        keterangan: json["keterangan"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "diBaca": diBaca,
        "nama": nama,
        "bacaanArab": bacaanArab,
        "bacaanLatin": bacaanLatin,
        "arti": arti,
        "keterangan": keterangan,
    };
}