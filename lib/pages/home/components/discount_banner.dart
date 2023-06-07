import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pet_fit/parslib/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var currentTime = DateFormat.H().format(now);
    String greeting = '';

    if (int.parse(currentTime) >= 6 && int.parse(currentTime) < 12) {
      greeting = 'Günaydın';
    } else if (int.parse(currentTime) >= 12 && int.parse(currentTime) < 18) {
      greeting = 'İyi günler';
    } else {
      greeting = 'İyi akşamlar';
    }

    return Row(
      children: [
        SizedBox(
          width: 21,
        ),
        Container(
          // height: 90,
          // width: double.infinity,
          // margin: EdgeInsets.all(getProportionateScreenWidth(20)),
          // padding: EdgeInsets.symmetric(
          //   horizontal: getProportionateScreenWidth(20),
          //   vertical: getProportionateScreenWidth(15),
          // ),
          // decoration: BoxDecoration(
          //   color: const Color.fromRGBO(110, 8, 222, 1),
          //   borderRadius: BorderRadius.circular(20),
          // ),
          child: Text.rich(
            TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(text: greeting + '\n'),
                TextSpan(
                  text: "Ahmet",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(24),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
