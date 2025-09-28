// lib/widgets/btk_product_grid.dart
import 'package:flutter/material.dart';
import '../models/product.dart';
import 'btk_product_card.dart';

class BtkProductGrid extends StatelessWidget {
  const BtkProductGrid({super.key, required this.items, this.onTapItem});

  final List<Product> items;
  final void Function(Product p)? onTapItem;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    // padding kiri+kanan 16, jarak kolom 12
    final gridWidth = w - 32 - 12;
    final itemWidth = gridWidth / 2;

    const infoHeight = 121.0;    // tinggi area informasi kartu (lihat perhitungan)
    const fudge = 2.0;           // sedikit “napas” untuk perbedaan font/OS
    final extent = itemWidth + infoHeight + fudge;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 16,
          mainAxisExtent: extent,     // <<— pakai extent, bukan childAspectRatio
        ),
        itemBuilder: (_, i) => BtkProductCard(
          product: items[i],
          onTap: () => onTapItem?.call(items[i]),
        ),
      ),
    );
  }
}
