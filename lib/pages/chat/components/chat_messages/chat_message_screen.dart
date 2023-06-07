import 'package:flutter/material.dart';
import 'package:pet_fit/pages/chat/chat_messages/components/body.dart';
import 'package:pet_fit/pages/chat/chat_messages/components/custom_app_bar.dart';
import 'package:pet_fit/parslib/constants.dart';
import 'package:pet_fit/parslib/models/Vet.dart';

class ChatMessageScreen extends StatelessWidget {
  static String routeName = "/chatmessage";

  const ChatMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: const CustomAppBar(title: "Merve Arabacı"),
      ),
      body: const Body(),
    );
  }
}

class VetDetailsArguments {
  final Vet vets;

  VetDetailsArguments({required this.vets});
}
