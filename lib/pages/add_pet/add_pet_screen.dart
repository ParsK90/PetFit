import 'package:flutter/material.dart';
import 'package:pet_fit/pages/add_pet/components/body.dart';

class AddPetScreen extends StatelessWidget {
  static String routeName = "/addpet";
  const AddPetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic categoryName = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    // print(categoryName["categoryName"] ?? "bilinmeyen");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName["categoryName"] ?? "bilinmeyen",
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Body(
        categoryName: categoryName["categoryName"] ?? "bilinmeyen",
      ),
    );
  }
}
