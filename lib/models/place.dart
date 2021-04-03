import 'package:flutter/material.dart';

class Place {
  final int id;
  final String name;
  final String description;
  final String location;
  final String image;
  final double rating;

  Place({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.location,
    @required this.image,
    @required this.rating,
  });
}

List<Place> demoPlaces = [
  Place(
    id: 1,
    name: 'Bariloche',
    description:
        'Minim consequat occaecat anim qui velit. Quis nisi laboris reprehenderit tempor cupidatat veniam ullamco esse ea laborum magna. Veniam quis elit commodo laboris commodo duis qui.',
    location: 'Río Negro',
    image: 'assets/images/bariloche.jpeg',
    rating: 5,
  ),
  Place(
    id: 2,
    name: 'Glaciar Perito Moreno',
    description:
        'Minim consequat occaecat anim qui velit. Quis nisi laboris reprehenderit tempor cupidatat veniam ullamco esse ea laborum magna. Veniam quis elit commodo laboris commodo duis qui.',
    location: 'Santa Cruz',
    image: 'assets/images/perito_moreno.jpg',
    rating: 4,
  ),
  Place(
    id: 3,
    name: 'Ushuaia',
    description:
        'Minim consequat occaecat anim qui velit. Quis nisi laboris reprehenderit tempor cupidatat veniam ullamco esse ea laborum magna. Veniam quis elit commodo laboris commodo duis qui.',
    location: 'Tierra del Fuego',
    image: 'assets/images/ushuaia.jpg',
    rating: 4,
  ),
  Place(
    id: 4,
    name: 'El Bolsón',
    description:
        'Minim consequat occaecat anim qui velit. Quis nisi laboris reprehenderit tempor cupidatat veniam ullamco esse ea laborum magna. Veniam quis elit commodo laboris commodo duis qui.',
    location: 'Río Negro',
    image: 'assets/images/el_bolson.jpg',
    rating: 4,
  ),
  Place(
    id: 5,
    name: 'San Martín de los Andes',
    description:
        'Minim consequat occaecat anim qui velit. Quis nisi laboris reprehenderit tempor cupidatat veniam ullamco esse ea laborum magna. Veniam quis elit commodo laboris commodo duis qui.',
    location: 'Neuquén',
    image: 'assets/images/san_martin_de_los_andes.jpg',
    rating: 3,
  ),
  Place(
    id: 6,
    name: 'Villa La Angostura',
    description:
        'Minim consequat occaecat anim qui velit. Quis nisi laboris reprehenderit tempor cupidatat veniam ullamco esse ea laborum magna. Veniam quis elit commodo laboris commodo duis qui.',
    location: 'Neuquén',
    image: 'assets/images/villa_la_angostura.jpg',
    rating: 5,
  ),
];
