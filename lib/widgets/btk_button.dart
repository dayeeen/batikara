import 'package:flutter/material.dart';
import '../config/theme.dart';

class BtkButton extends StatelessWidget {
  const BtkButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.loading = false,
    this.maxWidth = 345,   // default match Figma
    this.fullWidth = true, // <-- baru
  });

  final String label;
  final VoidCallback? onPressed;
  final bool loading;
  final double maxWidth;
  final bool fullWidth; // <-- baru

  @override
  Widget build(BuildContext context) {
    final btn = SizedBox(
      height: 44,
      width: fullWidth ? double.infinity : null, // <-- isi lebar kalau fullWidth
      child: ElevatedButton(
        onPressed: loading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.gold,
          foregroundColor: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          elevation: 0,
        ),
        child: loading
            ? const SizedBox(
                width: 18, height: 18,
                child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation(Colors.white)),
              )
            : Text(
                label,
                style: AppTextStyle.white.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
              ),
      ),
    );

    // kalau fullWidth, langsung return btn; kalau tidak, batasi ke 345px
    if (fullWidth) return btn;
    return ConstrainedBox(constraints: BoxConstraints(maxWidth: maxWidth), child: btn);
  }
}
