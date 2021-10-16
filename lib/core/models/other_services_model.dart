class OtherServiceModel {
  OtherServiceModel(
      {required this.name,
      required this.open,
      required this.image,
      required this.price});

  final String name;

  final String open;
  final double price;
  final List<String> image;
}

final other = <OtherServiceModel>[
  OtherServiceModel(
    name: 'Piscina',
    open: "8:00 am - 16:00 pm",
    price: 2.00,
    image: [
      'assets/images/piscina.jpg',
    ],
  ),
  OtherServiceModel(
    name: 'Restaurante',
    open: "8:00 am - 19:00 pm",
    price: 10,
    image: [
      'assets/images/restaurante.jpg',
      'assets/images/habitacion2.jpg',
      'assets/images/habitacion2-2-2.jpg'
    ],
  ),
  OtherServiceModel(
    name: 'Discoteca',
    open: "16:00 am - 19:00 pm",
    price: 10,
    image: [
      'assets/images/disco.jpg',
      'assets/images/habitacion2.jpg',
      'assets/images/habitacion2-2-2.jpg'
    ],
  )
];
