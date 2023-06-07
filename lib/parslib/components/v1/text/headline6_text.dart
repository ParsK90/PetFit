import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/components/v1/app_extensions.dart';

class Headline6Text extends Text {
  Headline6Text({
    Key? key,
    required BuildContext context,
    required String data,
    Color? color,
  }) : super(
          data,
          key: key,
          style: context.textTheme.titleMedium!.copyWith(
              color: color ?? context.secondaryVariant,
              fontWeight: FontWeight.bold),
        );
}
