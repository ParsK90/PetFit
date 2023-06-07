import 'package:flutter/material.dart';
import 'package:pet_fit/pages/chat/chat_messages/components/body.dart';
import 'package:pet_fit/pages/home/entryPoint/components/btm_nav_bar.dart';
import 'package:pet_fit/parslib/constants.dart';

class ChatScreen extends StatefulWidget {
  static String routeName = "/chatscreen";
  const ChatScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kPrimaryColor,
        title: const Text('Sohbet'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: const Body(),
      // bottomNavigationBar: const BtmNavBar(),
    );
  }
}
