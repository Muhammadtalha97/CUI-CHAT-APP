import '/Config/Images.dart';
import '/Pages/Home/Widgets/ChatTile.dart';
import 'package:flutter/material.dart';

class ChatLists extends StatelessWidget {
  const ChatLists({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: 'Talha CH',
          lastChat: 'Static Files',
          lastTime: '1:00 PM',
        ),
      ],
    );
  }
}
