import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomModel {
  RoomModel(
      {required this.name,
      required this.bed,
      required this.price,
      required this.image,
      required this.rating,
      required this.includes,
      required this.icons,
      required this.description,
      required this.id});

  final int id;
  final String name;
  final String bed;
  final double price;
  final List<String> image;
  final double rating;
  final List<String> includes;
  final List<IconData> icons;
  final String description;
}

final room = <RoomModel>[
  RoomModel(
      id: 1,
      name: 'Habitación Doble con baño privado',
      bed: '1 cama doble',
      price: 31,
      includes: [
        "Patio",
        "Vista al mar",
        "Baño en la habitación",
        "Wifi gratis",
        "Desayuno incluido"
      ],
      description:
          "En la habitacion se tiene articulos de aseos gratos, toallas, enchufe cerca de la cama,  entrada privada, ventilador, muebles ",
      icons: [
        Icons.deck,
        Icons.waves,
        Icons.bathroom,
        Icons.wifi_outlined,
        Icons.free_breakfast_sharp,
      ],
      image: [
        'assets/images/habitacion1.jpg',
        'assets/images/habitacion1-1.jpg',
        'assets/images/habitacion1-1-1.jpg',
        'assets/images/habitacion1.jpg',
        'assets/images/habitacion1-1.jpg',
        'assets/images/habitacion1-1-1.jpg'
      ],
      rating: 5),
  RoomModel(
      id: 2,
      name: 'Habitación Triple',
      bed: '1 cama doble y 4 litera',
      price: 40,
      includes: [
        "Patio",
        "Vista al mar",
        "Baño en la habitación",
        "Wifi gratis",
        "Desayuno incluido"
      ],
      description:
          "En la habitacion se tiene articulos de aseos gratos, toallas, enchufe cerca de la cama,  entrada privada, ventilador, muebles ",
      icons: [
        Icons.deck,
        Icons.waves,
        Icons.bathroom,
        Icons.wifi_outlined,
        Icons.free_breakfast_sharp,
      ],
      image: [
        'assets/images/habitacion2-2.jpg',
        'assets/images/habitacion2.jpg',
        'assets/images/habitacion2-2-2.jpg',
        'assets/images/habitacion1.jpg',
        'assets/images/habitacion1-1.jpg',
        'assets/images/habitacion1-1-1.jpg'
      ],
      rating: 4)
];
