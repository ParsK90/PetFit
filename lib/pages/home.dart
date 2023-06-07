import 'package:flutter/material.dart';
import 'package:pet_fit/pages/hayvan/hayvan.liste.dart';
import 'package:pet_fit/parslib/classes/pet_dialogs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Merhaba"),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () => PetDialogs.showPageInModal(
              context,
              const HayvanListePage(),
            ),
            child: const Text("Hayvanlar"),
          )
        ],
      ),
    );
  }
}
