import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/models/Pet.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PetDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as PetDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(),
      ),
      body: Body(
        pet: agrs.pet,
        storage: agrs.pet.aciklama,
      ),
    );
  }
}

class PetDetailsArguments {
  final Pet pet;

  PetDetailsArguments({required this.pet});
}
