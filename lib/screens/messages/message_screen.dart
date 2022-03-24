import 'package:chat/screens/chats/components/body.dart';
import 'package:flutter/material.dart';


import '../../constants.dart';
import 'components/body_messages.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyMessages() ,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
     title: Row(
       children: [
         SizedBox(width: 0),
         BackButton(),
         CircleAvatar(
           backgroundImage: AssetImage("assets/images/user_2.png"),
         ),
         SizedBox(width: kDefaultPadding * 0.75),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("jenny wilson",
             style: TextStyle(fontSize: 14),
             ),
             SizedBox(height: 3),
             Text("Active 3m ago",
               style: TextStyle(fontSize: 10),
             )
           ],)
       ],
     ),
      actions: [
        IconButton(
            icon: Icon(Icons.local_phone),
            onPressed: (){}
        ),
        SizedBox(width: 0),
        IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){}
        ),
      ],
    );
  }
}
