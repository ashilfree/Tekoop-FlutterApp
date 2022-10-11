import 'package:flutter/material.dart';
import 'package:tekoop/core/themes/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final String? labelText;
  final bool? validation;
  final String? message;
  final Function onChanged;
  final Widget? icon;
  final bool? obscureText;
  const CustomTextField(
      {Key? key,
      this.keyboardType,
      this.labelText,
      this.validation,
      this.message,
      required this.onChanged,
      this.icon,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),

      decoration: InputDecoration(
          errorStyle: const TextStyle(fontSize: 12),
          suffixIcon: icon,
          labelText: labelText,
          labelStyle: const TextStyle(color: whiteColor, fontSize: 12),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: whiteColor)),
          errorText: validation == null ? null : message),
      autocorrect: false,
      obscureText: obscureText ?? false,
      onChanged: (_) => onChanged(),
    );
  }
}
