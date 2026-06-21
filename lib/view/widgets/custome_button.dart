import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final VoidCallback onTap;

  final Color color;

  final Color textColor;

  final double height;

  final double width;

  final bool isLoading;

  const CustomButton({
    super.key,

    required this.text,

    required this.onTap,

    this.color = const Color(0xff4F46E5),

    this.textColor = Colors.white,

    this.height = 56,

    this.width = double.infinity,

    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        height: height,

        width: width,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),

          gradient: const LinearGradient(
            colors: [Color(0xff4F46E5), Color(0xff7C3AED)],
          ),

          boxShadow: [
            BoxShadow(
              color: const Color(0xff4F46E5).withOpacity(.3),

              blurRadius: 20,

              offset: const Offset(0, 8),
            ),
          ],
        ),

        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(color: Colors.white)
              : Text(
                  text,

                  style: TextStyle(
                    color: textColor,

                    fontSize: 18,

                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
