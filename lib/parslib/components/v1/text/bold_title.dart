import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/components/v1/app_extensions.dart';

class BoldTitle extends Text {
  BoldTitle(
      {Key? key,
      required String data,
      required BuildContext context,
      Color? color})
      : super(
          data,
          key: key,
          style: context.textTheme.titleLarge!.copyWith(
            color: color ?? context.secondaryVariant,
            fontWeight: FontWeight.bold,
          ),
        );
}
