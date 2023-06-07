import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/components/vets_card.dart';
import 'package:pet_fit/parslib/models/Vet.dart';
import 'package:pet_fit/parslib/size_config.dart';

class PopularVets extends StatelessWidget {
  const PopularVets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 21),
          child: Row(
            children: [
              Text(
                "Kuki",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " için",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bölgenizdeki Popüler Veterinerler",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Tümünü Gör",
                  style: TextStyle(color: Color.fromRGBO(110, 8, 222, 1)),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoVet.length,
                (index) {
                  if (demoVet[index].isPopular) {
                    return VetsCard(vet: demoVet[index]);
                  }
                  return const SizedBox.shrink();
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
