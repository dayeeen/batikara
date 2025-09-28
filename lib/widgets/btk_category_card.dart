import 'package:flutter/material.dart';
import '../config/theme.dart';

class BtkCategoryCard extends StatelessWidget {
  const BtkCategoryCard({
    super.key,
    required this.title,
    required this.imageAsset,
    this.onTap,
  });

  final String title;
  final String imageAsset;
  final VoidCallback? onTap;

  static const _w = 100.0;
  static const _h = 112.0;
  static const _radius = 12.0;
  static const _imageH = 100.0;              // tinggi area gambar (pas biar gap kecil)
  static const _offWhite = Color(0xFFEDEAE4); // warna latar gambar

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _w,
      height: _h,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(_radius),
        child: InkWell(
          borderRadius: BorderRadius.circular(_radius),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(_radius),
              border: Border.all(color: AppColors.black.withOpacity(.08)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // area gambar (rounded hanya atas)
                Container(
                  height: _imageH,
                  decoration: const BoxDecoration(
                    color: _offWhite,
                    borderRadius: BorderRadius.all(Radius.circular(_radius)),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(imageAsset, fit: BoxFit.contain),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.regular.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
