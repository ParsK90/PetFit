import 'package:flutter/material.dart';
import 'package:pet_fit/pages/chat/chat_screen.dart';
import 'package:pet_fit/pages/vet%20details/components/vet_description.dart';
import 'package:pet_fit/pages/vet%20details/components/vet_images.dart';
import 'package:pet_fit/parslib/components/default_button.dart';
import 'package:pet_fit/parslib/models/Vet.dart';
import 'package:pet_fit/parslib/size_config.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Vet vet;
  const Body({Key? key, required this.vet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        VetImages(vet: vet),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              VetDescription(
                vet: vet,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(50),
                        ),
                        child: DefaultButton(
                          text: "Sohbeti Başlat",
                          press: () {
                            Navigator.pushNamed(context, ChatScreen.routeName);
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
