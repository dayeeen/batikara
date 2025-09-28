import 'package:flutter/material.dart';
import '../config/theme.dart';

class BtkSearchBar extends StatefulWidget {
  const BtkSearchBar({
    super.key,
    this.controller,
    this.hintText = 'Find your perfect batik match...',
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.onTapFilter,
    this.fullWidth = true,
    this.maxWidth = 600,
    this.autofocus = false,
    this.readOnly = false,
  });

  final TextEditingController? controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onTap;
  final VoidCallback? onTapFilter;
  final bool fullWidth;
  final double maxWidth;
  final bool autofocus;
  final bool readOnly;

  @override
  State<BtkSearchBar> createState() => _BtkSearchBarState();
}

class _BtkSearchBarState extends State<BtkSearchBar> {
  late final TextEditingController _c =
      widget.controller ?? TextEditingController();

  bool get _hasText => _c.text.trim().isNotEmpty;

  OutlineInputBorder _border(Color c, [double w = 1]) =>
      OutlineInputBorder(borderRadius: BorderRadius.circular(22), borderSide: BorderSide(color: c, width: w));

  @override
  void initState() {
    super.initState();
    _c.addListener(() => setState(() {})); // untuk memunculkan/menyembunyikan tombol clear
  }

  @override
  void dispose() {
    if (widget.controller == null) _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final field = SizedBox(
      height: 44, // sesuai desain
      width: widget.fullWidth ? double.infinity : null,
      child: TextField(
        controller: _c,
        autofocus: widget.autofocus,
        readOnly: widget.readOnly,
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        onTap: widget.onTap,
        textInputAction: TextInputAction.search,
        style: AppTextStyle.regular.copyWith(
          fontSize: 14,
          color: AppColors.brown,
        ),
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: AppColors.white,
          hintText: widget.hintText,
          hintStyle: AppTextStyle.grey.copyWith(fontSize: 14),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          prefixIcon: const Icon(Icons.search_rounded, color: AppColors.grey),
          enabledBorder: _border(AppColors.grey),
          focusedBorder: _border(AppColors.grey, 1),
          // clear + filter berada di dalam suffix
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_hasText)
                IconButton(
                  tooltip: 'Clear',
                  onPressed: () {
                    _c.clear();
                    widget.onChanged?.call('');
                  },
                  icon: const Icon(Icons.close_rounded, color: AppColors.grey),
                ),
              // if (widget.onTapFilter != null)
              //   IconButton(
              //     tooltip: 'Filter',
              //     onPressed: widget.onTapFilter,
              //     icon: const Icon(Icons.tune_rounded, color: AppColors.grey),
              //   ),
            ],
          ),
          suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        ),
      ),
    );

    if (widget.fullWidth) return field;
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: widget.maxWidth),
      child: field,
    );
  }
}
