import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color black = Colors.black;

  // Основные цвета
  static const Color terracotta = Color(0xFFE27D60);
  static const Color oliveOil = Color(0xFF808000);
  static const Color sunflower = Color(0xFFFFD700);

  // Акцентные цвета
  static const Color tomatoRed = Color(0xFFFF6347);
  static const Color basilGreen = Color(0xFF2E8B57);

  // Нейтральные тона
  static const Color limestone = Color(0xFFF5F5DC);
  static const Color tuscanSunset = Color(0xFF6B8E23);
  static const Color trattoriaBlack = Color(0xFF2F4F4F);

  // Текст
  static const Color textPrimary = Color(0xFF2F4F4F);
  static const Color textOnAccent = Colors.white;

  // Фоны
  static const Color backgroundLight = Color(0xFFFFF8DC);
  static const Color backgroundDark = Color(0xFF556B2F);

  // Градиенты
  static LinearGradient get primaryGradient =>
      const LinearGradient(colors: [terracotta, tomatoRed], begin: Alignment.topLeft, end: Alignment.bottomRight);

  static LinearGradient get secondaryGradient => const LinearGradient(
    colors: [oliveOil, basilGreen],
    stops: [0.2, 0.8],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  // Material Color для основной темы
  static MaterialColor get primaryMaterial => MaterialColor(terracotta.value, const <int, Color>{
    50: Color(0xFFFBE9E7),
    100: Color(0xFFFFCCBC),
    200: Color(0xFFFFAB91),
    300: Color(0xFFFF8A65),
    400: Color(0xFFFF7043),
    500: Color(0xFFE27D60),
    600: Color(0xFFD84315),
    700: Color(0xFFBF360C),
    800: Color(0xFF9E1A00),
    900: Color(0xFF7C0000),
  });
}
