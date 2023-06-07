import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/components/rounded_icon_btn.dart';
import 'package:pet_fit/parslib/models/Vet.dart';
import 'package:pet_fit/parslib/size_config.dart';

class VetDetailDots extends StatelessWidget {
  const VetDetailDots({
    Key? key,
    required this.vets,
  }) : super(key: key);

  final Vet vets;

  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo
    // int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          const Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DetailDot extends StatelessWidget {
  const DetailDot({
    Key? key,
    this.isSelected = false,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      // decoration: BoxDecoration(
      //   color: Colors.transparent,
      //   border:
      //       Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      //   shape: BoxShape.circle,
      // ),
      // child: Row(
      //   children: [Text(storage.toString())],
      // ),
      // child: DecoratedBox(
      //   decoration: BoxDecoration(
      //     color: color,
      //     shape: BoxShape.circle,
      //   ),
      // ),
    );
  }
}
