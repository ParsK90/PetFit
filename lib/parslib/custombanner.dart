import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:pet_fit/parslib/constants.dart';

class CustomBanner extends StatelessWidget {
  final Widget child;

  const CustomBanner({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          top: 12,
          right: 0,
          child: Transform.rotate(
            angle: math.pi / 4,
            child: Container(
              padding: const EdgeInsets.all(12),
              color: kPrimaryColor,
              child: const Text(
                "Preview",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
