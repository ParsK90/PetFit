import 'package:flutter/material.dart';
import 'package:pet_fit/pages/home/components/popular_vets.dart';
import 'package:pet_fit/parslib/size_config.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'my_pets.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const DiscountBanner(),
            // const Categories(),
            // const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const MyPets(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const PopularVets(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
