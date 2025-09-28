import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String imageAsset;
  final double price;
  final List<Color> colors; // untuk bulatan warna
  final String sizeLabel;   // contoh: 'S - XL' / '36 – 44' / 'Free Size'

  const Product({
    required this.id,
    required this.title,
    required this.imageAsset,
    required this.price,
    this.colors = const [],
    this.sizeLabel = '',
  });
}
