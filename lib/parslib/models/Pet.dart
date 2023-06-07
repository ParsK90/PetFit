import 'package:flutter/material.dart';

class Pet {
  final int id, sahipId, hayvanCinsTurId;
  final String aciklama, ekAciklama, cinsiyet, chip;
  final DateTime dogumTarihi;
  final double kilo;
  final bool aktif;
  final Image resim;
  final Color renk;
  Pet({
    required this.id,
    required this.sahipId,
    required this.hayvanCinsTurId,
    required this.aciklama,
    required this.ekAciklama,
    required this.cinsiyet,
    required this.chip,
    required this.dogumTarihi,
    required this.kilo,
    required this.aktif,
    required this.resim,
    required this.renk,
  });
}

List<Pet> demoPets = [
  Pet(
    id: 1,
    aciklama: "Luna",
    aktif: true,
    chip: "1234567890",
    cinsiyet: "Erkek",
    dogumTarihi: DateTime(2020, 4, 2),
    ekAciklama: "Sağlıklı",
    hayvanCinsTurId: 1,
    kilo: 12,
    sahipId: 1,
    resim: Image.asset("assets/demo/luna.jpg"),
    renk: Colors.black,
  ),
  Pet(
    id: 1,
    aciklama: "Gofret",
    aktif: true,
    chip: "1234567890",
    cinsiyet: "Erkek",
    dogumTarihi: DateTime(2020, 4, 2),
    ekAciklama: "Sağlıklı",
    hayvanCinsTurId: 1,
    kilo: 12,
    sahipId: 1,
    resim: Image.asset("assets/demo/gofret.jpg"),
    renk: Colors.black,
  ),
  Pet(
      id: 1,
      aciklama: "Kuki",
      aktif: true,
      chip: "1234567890",
      cinsiyet: "Erkek",
      dogumTarihi: DateTime(2020, 4, 2),
      ekAciklama: "Hasta",
      hayvanCinsTurId: 1,
      kilo: 12,
      sahipId: 1,
      resim: Image.asset("assets/demo/kuki.jpg"),
      renk: Colors.black),
];
