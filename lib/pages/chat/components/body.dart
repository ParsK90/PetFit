import 'package:flutter/material.dart';
import 'package:pet_fit/pages/chat/chat_messages/chat_message_screen.dart';
import 'package:pet_fit/parslib/models/chat/Chat.dart';
import 'chat_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatMessageScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
