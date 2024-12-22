import 'package:cui_chat/Config/Images.dart';
import 'package:cui_chat/Pages/HomePage/Widgets/ChatTile.dart';
import 'package:flutter/material.dart';

class ChatLists extends StatelessWidget {
  const ChatLists({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: 'Tooba Amjad',
          lastChat: 'No More Time',
          lastTime: '8:00 PM',
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: 'Talha CH',
          lastChat: 'I Love You',
          lastTime: '1:00 PM',
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: 'Tooba Amjad',
          lastChat: 'No More Time',
          lastTime: '8:00 PM',
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: 'Talha CH',
          lastChat: 'I Love You',
          lastTime: '1:00 PM',
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: 'Tooba Amjad',
          lastChat: 'No More Time',
          lastTime: '8:00 PM',
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: 'Talha CH',
          lastChat: 'I Love You',
          lastTime: '1:00 PM',
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: 'Tooba Amjad',
          lastChat: 'No More Time',
          lastTime: '8:00 PM',
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: 'Talha CH',
          lastChat: 'I Love You',
          lastTime: '1:00 PM',
        ),
      ],
    );
  }
}
