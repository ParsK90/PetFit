import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/components/pet_card.dart';
import 'package:pet_fit/parslib/models/Pet.dart';
import 'package:pet_fit/parslib/size_config.dart';
import 'section_title.dart';

class MyPets extends StatelessWidget {
  const MyPets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Aileniz", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoPets.length,
                (index) {
                  if (demoPets[index].aktif) {
                    return PetCard(pet: demoPets[index]);
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
