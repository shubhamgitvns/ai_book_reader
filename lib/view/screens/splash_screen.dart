import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/text_style.dart';
import '../../utilty/route_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,

      duration: const Duration(seconds: 2),
    );

    animation = Tween<double>(
      begin: 0.8,

      end: 1,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    controller.repeat(reverse: true);

    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(RouteNames.basicInfo);
    });
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,

            end: Alignment.bottomRight,

            colors: [Color(0xff4F46E5), Color(0xff7C3AED)],
          ),
        ),

        child: Center(
          child: ScaleTransition(
            scale: animation,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  height: 120,

                  width: 120,

                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.15),

                    shape: BoxShape.circle,

                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(.2),

                        blurRadius: 25,

                        spreadRadius: 5,
                      ),
                    ],
                  ),

                  child: const Icon(
                    Icons.menu_book_rounded,

                    size: 60,

                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "IQ100",

                  style: TextStyle(
                    fontSize: 38,

                    color: Colors.white,

                    fontWeight: FontWeight.bold,

                    letterSpacing: 2,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "Smart Book Suggestions",

                  style: AppTextStyle.normal.copyWith(color: Colors.white70),
                ),

                const SizedBox(height: 5),

                Text(
                  "Powered by AI",

                  style: AppTextStyle.normal.copyWith(
                    color: Colors.white60,

                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 50),

                const SizedBox(
                  height: 25,

                  width: 25,

                  child: CircularProgressIndicator(
                    color: Colors.white,

                    strokeWidth: 2,
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
