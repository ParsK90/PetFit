import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/models/Pet.dart';
import 'package:pet_fit/parslib/size_config.dart';

class DetailsDots extends StatelessWidget {
  const DetailsDots({
    Key? key,
    required this.pet,
  }) : super(key: key);

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          const Text("Depolama:"),
          // ...List.generate(
          //   pet.colors.length,
          //   (index) => DetailsDot(
          //     // price: pet.price.toString(),
          //     storage: pet.storage,
          //     isSelected: index == selectedpet,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class DetailsDot extends StatelessWidget {
  const DetailsDot({
    Key? key,
    // required this.price,
    required this.storage,
    this.isSelected = false,
  }) : super(key: key);

  // final String price;
  final String storage;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: const BoxDecoration(
        // color: isSelected ? Colors.deepPurpleAccent : Colors.transparent,
        color: Colors.deepPurple,
        borderRadius: BorderRadius.all(Radius.zero),
        // border: Border.all(color: Colors.black, strokeAlign: 3),
        shape: BoxShape.rectangle,
      ),
      child: Text(
        storage,
        style: const TextStyle(
            // color: isSelected ? Colors.white : Colors.black, fontSize: 12),
            color: Colors.white),
        maxLines: 1,
      ),
    );
  }
}
