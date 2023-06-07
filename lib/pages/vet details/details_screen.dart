import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/models/Vet.dart';
import 'components/body.dart';

class VetDetailsScreen extends StatelessWidget {
  static String routeName = "/vetdetails";

  const VetDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final VetDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as VetDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: Container() // CustomAppBar(rating: agrs.vet.reating),
          ),
      body: Body(
        vet: agrs.vet,
      ),
    );
  }
}

class VetDetailsArguments {
  final Vet vet;

  VetDetailsArguments({required this.vet});
}
