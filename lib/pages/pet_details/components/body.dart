import 'package:flutter/material.dart';
import 'package:pet_fit/pages/chat/chat_messages/chat_message_screen.dart';
import 'package:pet_fit/pages/pet_details/components/all_details.dart';
import 'package:pet_fit/pages/pet_details/components/product_description.dart';
import 'package:pet_fit/pages/pet_details/components/product_images.dart';
import 'package:pet_fit/parslib/components/default_button.dart';
import 'package:pet_fit/parslib/models/Pet.dart';
import 'package:pet_fit/parslib/size_config.dart';
import 'color_dots.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Pet pet;
  final String storage;

  const Body({Key? key, required this.pet, required this.storage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PetImages(pet: pet),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              PetDescription(
                pet: pet,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(pet: pet),
                    DetailsDots(pet: pet),
                    // PetDetail(storage: storage, pet: pet),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Sohbeti Başlat",
                          press: () {
                            Navigator.pushNamed(
                                context, ChatMessageScreen.routeName);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
