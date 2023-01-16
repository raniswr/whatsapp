import 'package:flutter/material.dart';

class AppStyles {
  AppStyles._();
  static Color primaryColor = Colors.blue;
  static Color bgColor = const Color(0xFFFFFFFF);
  static Color textFieldColor = const Color(0xFFF3F3F5);

  static TextStyle styleTextBody28() => const TextStyle(
        fontFamily: "MavenPro",
        fontSize: 28,
        color: Colors.black54,
      );
  static TextStyle styleTextBody16() => const TextStyle(
        fontFamily: "MavenPro",
        fontSize: 16,
      );
  static TextStyle styleTextBody14() => const TextStyle(
        fontFamily: "MavenPro",
        fontSize: 14,
        color: Colors.grey,
      );
  static TextStyle styleTextBody12() => const TextStyle(
        fontFamily: "MavenPro",
        fontSize: 12,
        color: Colors.grey,
      );
  static TextStyle styleTextBodyName() => const TextStyle(
        fontFamily: "MonoSpaced",
        fontSize: 20,
        color: Colors.black,
      );

  static InputDecoration inputDecoration(String hintText) => InputDecoration(
        hintText: hintText,
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppStyles.textFieldColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppStyles.textFieldColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
        ),
      );
  static BoxShadow bottomShadow = const BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 3, offset: Offset(0, 8));
}
