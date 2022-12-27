import 'package:flutter/material.dart';

class Product {
  final int id;
  String image, title, name;
  int price;
  int priceBefore;
  List<String> size;
  List<Color> color;
  double favorites;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.name,
    required this.price,
    required this.priceBefore,
    required this.size,
    required this.favorites,
    required this.color,
  });
}

List<Product> demoProduct = [
  Product(
    id: 1,
    image:
        'https://lzd-img-global.slatic.net/g/p/6cee81e88ef9fcc5890c45298dcd7dde.jpg_720x720q80.jpg_.webp',
    title:
        'Giày là một cái gì đó rất này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ',
    name: 'Giay Nike',
    price: 1800000,
    priceBefore: 2000000,
    size: ['M', 'L', 'XL', 'XXL'],
    color: [
      Colors.red,
      Colors.blue,
      Colors.white,
      Colors.black,
    ],
    favorites: 4.1,
  ),
  Product(
    id: 2,
    image:
        'https://neverstopshop.com/image/catalog/Post/Joyride/Giay-Nike-Joyride-nam-nu-sfake-replica-gia-re-HCM-2.jpg',
    title:
        'Giày là một cái gì đó rất này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ',
    name: 'Giay Nike',
    price: 5800000,
    priceBefore: 6000000,
    size: ['M', 'L', 'XL', 'XXL'],
    color: [
      Colors.red,
      Colors.blue,
      Colors.white,
      Colors.black,
    ],
    favorites: 4.1,
  ),
  Product(
    id: 3,
    image:
        'https://ordixi.com/wp-content/uploads/2020/01/giay-nike-air-force-1-low-07-black-multi-color-aq3692-1002.jpg',
    title:
        'Giày là một cái gì đó rất này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ',
    name: 'Giay Nike',
    price: 2800000,
    priceBefore: 3100000,
    size: ['M', 'L', 'XL', 'XXL'],
    color: [
      Colors.red,
      Colors.blue,
      Colors.white,
      Colors.black,
    ],
    favorites: 4.1,
  ),
  Product(
    id: 4,
    image:
        'https://giaysneakerhcm.com/wp-content/uploads/2021/04/giay-nike-air-force-1-LV8-white-arctic-punch-blue-2-swoosh-1.jpg',
    title:
        'Giày là một cái gì đó rất này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ',
    name: 'Giay Nike',
    price: 800000,
    priceBefore: 1200000,
    size: ['M', 'L', 'XL', 'XXL'],
    color: [
      Colors.red,
      Colors.blue,
      Colors.white,
      Colors.black,
    ],
    favorites: 4.1,
  ),
  Product(
    id: 5,
    image:
        'https://shopgiayreplica.com/wp-content/uploads/2020/03/giay-nike-air-jordan-1-dior-replica.jpg',
    title:
        'Giày là một cái gì đó rất này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ',
    name: 'Giay Nike',
    price: 4800000,
    priceBefore: 4900000,
    size: ['M', 'L', 'XL', 'XXL'],
    color: [
      Colors.red,
      Colors.blue,
      Colors.white,
      Colors.black,
    ],
    favorites: 4.1,
  ),
];
