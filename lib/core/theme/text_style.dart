import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTextStyle {
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle subHeading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static const TextStyle normal = TextStyle(
    fontSize: 16,
    color: AppColors.black,
  );
}
