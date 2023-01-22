import 'package:flutter/material.dart';
enum Season{
  Winter,
  Spring,
  Summer,
  Autumn,
}
enum TripType{
  Exploration,
  Tourism,
}
enum LocaTion{
  AlAnbar,
  Babil,
  Baghdad,
  Basra,
  DhiQar,
  AlQadisiyyah,
  Diyala,
  Dihok,
  Erbil,
  Halabja,
  Karbala,
  Kirkuk,
  Maysan,
  Muthanna,
  Najaf,
  Ninawa,
  SalahAlDin,
  Sulaymaniyah,
  Wasit,
}
class Trip{
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List <String> activities;
  final List<String> program;
  final int duration;
  //final Season season;
  final TripType tripType;
  final bool isInDhoik;
  final bool isInIrbil;
  final LocaTion location;
  final bool isShort;
  final bool isLarge;
  final String subTitle;
final int price;
  const Trip({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.activities,
    required this.program,
  required this.duration,
   // required this.season,
    required this.tripType,
    required this.isInDhoik,
    required this.isInIrbil,
    required this.location,
    required this.isShort,
    required this.isLarge,
    required this.subTitle,
    required this.price,

  }
  );
}