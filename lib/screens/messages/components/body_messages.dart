import 'package:chat/models/ChatMessage.dart';
import 'package:chat/screens/messages/components/text_message.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chat_input_field.dart';
import 'message.dart';

class BodyMessages extends StatelessWidget {
  const BodyMessages({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ListView.builder(
                itemCount: demeChatMessages.length,
                  itemBuilder: (context, index ) => Message( message: demeChatMessages[index] ,),
              ),
            )
        ),
        ChatInputField()
      ],
    );
  }
}

