import 'package:flutter/material.dart';
import '../config/theme.dart';
import '../models/product.dart';

class BtkProductCard extends StatelessWidget {
  const BtkProductCard({
    super.key,
    required this.product,
    this.onTap,
  });

  final Product product;
  final VoidCallback? onTap;

  static const _radius = 20.0;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(_radius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(_radius),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(_radius),
            boxShadow: const [
              BoxShadow(color: Color(0x14000000), blurRadius: 12, offset: Offset(0, 6)),
            ],
            border: Border.all(color: Colors.black12.withOpacity(.06)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image (rounded top)
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(_radius),
                  topRight: Radius.circular(_radius),
                ),
                child: AspectRatio(
                  aspectRatio: 1, // kotak, biar konsisten
                  child: Image.asset(product.imageAsset, fit: BoxFit.cover),
                ),
              ),

              // Info area
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // colors + size label
                    Row(
                      children: [
                        for (final c in product.colors)
                          _ColorDot(color: c),
                        const Spacer(),
                        if (product.sizeLabel.isNotEmpty)
                          Text(
                            product.sizeLabel,
                            style: AppTextStyle.small.copyWith(
                              color: AppColors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 6),

                    // title
                    Text(
                      product.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.regular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // price (kanan bawah)
                    Row(
                      children: [
                        const Spacer(),
                        Text(
                          '\$${product.price.toStringAsFixed(0)}',
                          style: AppTextStyle.black.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ColorDot extends StatelessWidget {
  const _ColorDot({required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14, height: 14,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black12.withOpacity(.25)),
      ),
    );
  }
}
