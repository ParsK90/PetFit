import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/components/v1/app_extensions.dart';

class PrimaryBoldText extends Text {
  PrimaryBoldText({
    Key? key,
    required BuildContext context,
    required String data,
  }) : super(
          data,
          key: key,
          style: TextStyle(
            color: context.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        );
}
