import 'package:chat_app/Controller/ProfileController.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:chat_app/Model/UserModel.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../Controller/ChatController.dart';
import '/Config/Images.dart';
import '/Pages/Chat/Widgets/ChatBubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key, required this.userModel});
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();
    ChatController chatController = Get.put(ChatController());
    ProfileController profileController = Get.put(ProfileController());
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
              userModel.name ?? 'User',
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
            Expanded(
                child: TextField(
              controller: messageController,
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
            InkWell(
              onTap: () {
                if (messageController.text.isNotEmpty) {
                  chatController.sendMessage(
                      userModel.id!, messageController.text);
                  messageController.clear();
                }
              },
              child: Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  AssetsImage.sendSVG,
                  width: 25,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 80, left: 10, right: 10, top: 10),
        child: StreamBuilder<List<ChatModel>>(
            stream: chatController.getMessages(userModel.id!),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              }
              if (!snapshot.hasData ||
                  snapshot.data == null ||
                  snapshot.data!.isEmpty) {
                return Center(
                  child: Text('No Messages'),
                );
              } else {
                return ListView.builder(
                  reverse: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final data = snapshot.data![index];

                    // Ensure timestamp is not null before parsing
                    DateTime newTimestamp = data.timestamp != null
                        ? DateTime.parse(data.timestamp!)
                        : DateTime.now();
                    String formattedTime =
                        DateFormat('hh:mm a').format(newTimestamp);

                    // Safely access message and imageUrl
                    return ChatBubble(
                      message: data.message ??
                          "No message", // Default if message is null
                      isComing: snapshot.data![index].senderId !=
                          profileController.currentUser.value.id,
                      time: formattedTime,
                      status: 'read',
                      imageUrl: data.imageUrl ??
                          "", // Default empty string if imageUrl is null
                    );
                  },
                );
              }
            }),
      ),
    );
  }
}
