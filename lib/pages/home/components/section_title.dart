import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {Key? key,
      required this.title,
      required this.press,
      this.sectionType = 1})
      : super(key: key);

  final String title;
  final GestureTapCallback press;
  final int sectionType;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
        sectionType != 0
            ? GestureDetector(
                onTap: press,
                child: const Text(
                  "Tümünü Gör",
                  style: TextStyle(color: Color.fromRGBO(110, 8, 222, 1)),
                ),
              )
            : Container(),
      ],
    );
  }
}
