import 'package:flutter/material.dart';
import 'btk_category_card.dart';

class BtkCategory {
  final String title;
  final String asset;
  const BtkCategory(this.title, this.asset);
}

class BtkCategoryList extends StatelessWidget {
  const BtkCategoryList({super.key, required this.items, this.onSelect});

  final List<BtkCategory> items;
  final void Function(BtkCategory cat)? onSelect;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158, // tinggi cukup untuk card + shadow
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, i) {
          final it = items[i];
          return BtkCategoryCard(
            title: it.title,
            imageAsset: it.asset,
            onTap: () => onSelect?.call(it),
          );
        },
      ),
    );
  }
}
