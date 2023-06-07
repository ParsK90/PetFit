// import 'package:flutter/material.dart'
//     show
//         BuildContext,
//         Container,
//         EdgeInsets,
//         Key,
//         Padding,
//         Row,
//         StatelessWidget,
//         Text,
//         Widget;
// import 'package:mobile_box/parslib/models/Pet.dart';
// import 'package:mobile_box/parslib/size_config.dart';

// class PetDetails extends StatelessWidget {
//   const PetDetails({
//     Key? key,
//     required this.pet,
//     required this.storage,
//   }) : super(key: key);

//   final Pet pet;
//   final Pet storage;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//           EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//       child: Row(
//         children: [
//           const Text("Depolama:"),
//           ...List.generate(
//             pet.storage.length,
//             (index) => PetDetail(
//               storage: pet.storage[index],
//               pet: pet,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class PetDetail extends StatelessWidget {
//   const PetDetail({
//     Key? key,
//     required this.storage,
//     required Pet pet,
//   }) : super(key: key);

//   final String storage;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(right: 2),
//       padding: EdgeInsets.all(getProportionateScreenWidth(10)),
//       height: getProportionateScreenHeight(50),
//       width: getProportionateScreenWidth(50),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/constants.dart';
import 'package:pet_fit/parslib/models/Pet.dart';
import 'package:pet_fit/parslib/size_config.dart';

class PetDetails extends StatelessWidget {
  const PetDetails({
    Key? key,
    required this.pet,
  }) : super(key: key);

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          const Text("Depolama:"),
          // ...List.generate(
          //   pet.storage.length,
          //   (index) => ColorDot(
          //     color: pet.colors[index],
          //     isSelected: index == selectedColor,
          //   ),
          // ),
          // const Spacer(),
          // RoundedIconBtn(
          //   icon: Icons.remove,
          //   press: () {},
          // ),
          // SizedBox(width: getProportionateScreenWidth(20)),
          // RoundedIconBtn(
          //   icon: Icons.add,
          //   showShadow: true,
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
