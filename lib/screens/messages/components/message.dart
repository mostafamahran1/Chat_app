import 'package:chat/models/ChatMessage.dart';
import 'package:chat/screens/messages/components/text_message.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class Message extends StatelessWidget {
  const Message({
    Key key, @required this.message,
  }) : super(key: key);

  final ChatMessage message ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment: message.isSender? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if(!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
          ],
          TextMessgae( message:  message,),
        ],
      ),
    );
  }
}

