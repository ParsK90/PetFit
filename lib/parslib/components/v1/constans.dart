import 'package:flutter/material.dart';

const Color primaryColor = Color.fromARGB(255, 110, 8, 222);

const Color kLightPrimary = Color(0xFF321D0B);
const Color kDarkPrimary = Color(0xFF111827);

const Color kLightTextColor = Color(0xFF7D7D7D);
const Color kDarkTextColor = Colors.white;

const Color kLightFillColor = Color(0xFFF5F5F5);
const Color kDarkFillColor = Color(0xFF1C2431);

const Color kLightStrokeColor = Color(0xFFD9D9D9);
const Color kDarkStrokeColor = Color(0xFF1D2839);

const Color kLightDividerColor = Color(0xFFD2D2D2);
const Color kDarkDividerColor = Color(0xFF747474);

const double defaultPadding = 16.0;
const double defaultBorderRadius = 12.0;

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isActive,
  }) : super(key: key);

  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding / 4),
      decoration: BoxDecoration(
        border: Border.all(color: isActive ? primaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: 10,
        backgroundColor: color,
      ),
    );
  }
}
