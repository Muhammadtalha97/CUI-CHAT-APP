import 'package:cui_chat/Config/Images.dart';
import 'package:cui_chat/Pages/Chat/Widgets/ChatBubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AssetsImage.girlPic),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tooba Amjad',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'online',
              style: Theme.of(context).textTheme.labelSmall,
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Theme.of(context).colorScheme.primaryContainer),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                AssetsImage.micSVG,
                width: 25,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
                child: TextField(
              decoration:
                  InputDecoration(filled: false, hintText: 'Type message ...'),
            )),
            Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                AssetsImage.gallerySVG,
                width: 25,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                AssetsImage.sendSVG,
                width: 25,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: const [
            ChatBubble(
                message: 'How are you ?',
                isComing: true,
                time: '10:18 PM',
                status: 'Read',
                imageUrl: ""),
            ChatBubble(
                message: 'How are you ?',
                isComing: false,
                time: '10:18 PM',
                status: 'Read',
                imageUrl: ""),
            ChatBubble(
                message: 'How are you ?',
                isComing: false,
                time: '10:18 PM',
                status: 'Read',
                imageUrl:
                    "https://blog.solguruz.com/wp-content/uploads/2023/11/Flutter-for-Hybrid-Apps-Why-Flutter-is-the-Best-Platform-to-Make-Hybrid-Apps.png"),
            ChatBubble(
                message: 'How are you ?',
                isComing: true,
                time: '10:18 PM',
                status: 'Read',
                imageUrl: ""),
            ChatBubble(
                message: 'How are you ?',
                isComing: false,
                time: '10:18 PM',
                status: 'Read',
                imageUrl: ""),
            ChatBubble(
                message: 'How are you ?',
                isComing: false,
                time: '10:18 PM',
                status: 'Read',
                imageUrl:
                    "https://blog.solguruz.com/wp-content/uploads/2023/11/Flutter-for-Hybrid-Apps-Why-Flutter-is-the-Best-Platform-to-Make-Hybrid-Apps.png"),
            ChatBubble(
                message: 'How are you ?',
                isComing: true,
                time: '10:18 PM',
                status: 'Read',
                imageUrl: ""),
            ChatBubble(
                message: 'How are you ?',
                isComing: false,
                time: '10:18 PM',
                status: 'Read',
                imageUrl: ""),
            ChatBubble(
                message: 'How are you ?',
                isComing: false,
                time: '10:18 PM',
                status: 'Read',
                imageUrl:
                    "https://blog.solguruz.com/wp-content/uploads/2023/11/Flutter-for-Hybrid-Apps-Why-Flutter-is-the-Best-Platform-to-Make-Hybrid-Apps.png"),
          ],
        ),
      ),
    );
  }
}
