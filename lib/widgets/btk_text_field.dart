import 'package:flutter/material.dart';
import '../config/theme.dart';

class BtkTextField extends StatefulWidget {
  const BtkTextField({
    super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.isPassword = false,
    this.maxWidth = 345, // match Figma
  });

  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final bool isPassword;
  final double maxWidth;

  @override
  State<BtkTextField> createState() => _BtkTextFieldState();
}

class _BtkTextFieldState extends State<BtkTextField> {
  bool _obscure = true;

  OutlineInputBorder _border(Color color, [double w = 1.3]) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color, width: w),
      );

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: widget.maxWidth),
      child: SizedBox(
        height: 44, // hug 44px
        child: TextFormField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          obscureText: widget.isPassword ? _obscure : false,
          style: AppTextStyle.regular.copyWith(
            fontSize: 14,
            color: AppColors.brown,
          ), // brown text, 14px
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: AppColors.white,
            hintText: widget.hintText,
            hintStyle: AppTextStyle.grey.copyWith(fontSize: 14),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 12,
            ), // top/bottom 12
            prefixIcon: widget.prefixIcon,
            suffixIcon:
                widget.isPassword
                    ? IconButton(
                      onPressed: () => setState(() => _obscure = !_obscure),
                      icon: Icon(
                        _obscure
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: AppColors.brown,
                      ),
                    )
                    : null,
            enabledBorder: _border(AppColors.brown, 1),
            focusedBorder: _border(AppColors.brown, 1.5),
            errorBorder: _border(Colors.redAccent),
            focusedErrorBorder: _border(Colors.redAccent, 1.5),
          ),
        ),
      ),
    );
  }
}
