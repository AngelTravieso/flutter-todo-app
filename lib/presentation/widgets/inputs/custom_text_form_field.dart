import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscureText;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hint,
    this.obscureText = false,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
    );

    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        label: Text(label),
        hintText: hint,
        isDense: true,
        border: border,
        enabledBorder: border.copyWith(
          borderSide: BorderSide(
            color: colors.primary,
          ),
        ),
        errorBorder: border.copyWith(
          borderSide: BorderSide(
            color: Colors.red.shade800,
          ),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(
            color: Colors.red.shade800,
          ),
        ),
      ),
    );
  }
}
