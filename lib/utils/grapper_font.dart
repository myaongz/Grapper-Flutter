import 'package:flutter/material.dart';

class GrapperFonts {
  static const String pretendard_100 = "Pretendard-100";
  static const String pretendard_200 = "Pretendard-200";
  static const String pretendard_300 = "Pretendard-300";
  static const String pretendard_400 = "Pretendard-400";
  static const String pretendard_500 = "Pretendard-500";
  static const String pretendard_600 = "Pretendard-600";
  static const String pretendard_700 = "Pretendard-700";
  static const String pretendard_800 = "Pretendard-800";
  static const String pretendard_900 = "Pretendard-900";
}

class GrapperText extends StatelessWidget {
  const GrapperText({
    super.key,
    required this.text,
    required this.grapperFont,
    required this.size,
    required this.color,
  });
  final String text;
  final double size;
  final String grapperFont;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: grapperFont,
        fontSize: size,
        color: color,
      ),
    );
  }
}
