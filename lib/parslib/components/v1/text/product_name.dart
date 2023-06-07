import 'package:flutter/material.dart';

class PetName extends Text {
  const PetName({Key? key, required String data})
      : super(
          data,
          key: key,
          maxLines: 2,
          textAlign: TextAlign.center,
        );
}
