import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  final String hintText;

  final IconData? prefixIcon;

  final Widget? suffixIcon;

  final bool obscureText;

  final TextInputType keyboardType;

  const CustomTextField({
    super.key,

    required this.controller,

    required this.hintText,

    this.prefixIcon,

    this.suffixIcon,

    this.obscureText = false,

    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),

            blurRadius: 15,

            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: TextField(
        controller: controller,

        obscureText: obscureText,

        keyboardType: keyboardType,

        decoration: InputDecoration(
          hintText: hintText,

          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),

          suffixIcon: suffixIcon,

          border: InputBorder.none,

          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,

            vertical: 18,
          ),
        ),
      ),
    );
  }
}
