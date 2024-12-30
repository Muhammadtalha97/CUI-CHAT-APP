import 'package:chat_app/Controller/ContactController.dart';
import 'package:chat_app/Pages/Chat/ChatPage.dart';
import 'package:chat_app/Pages/ContactPage/Widgets/ContactSearch.dart';
import 'package:chat_app/Pages/ContactPage/Widgets/NewContactTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Config/Images.dart';
import '../Home/Widgets/ChatTile.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isSearchEnable = false.obs;
   
    ContactController contactController = Get.put(ContactController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Contact'),
        actions: [
          Obx(() => IconButton(
              onPressed: () {
                isSearchEnable.value = !isSearchEnable.value;
              },
              icon: isSearchEnable.value
                  ? Icon(Icons.close)
                  : Icon(Icons.search)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Obx(
              () => isSearchEnable.value ? ContactSearch() : SizedBox(),
            ),
            SizedBox(
              height: 10,
            ),
            NewContactTile(
                btnName: 'New Contact', icon: Icons.person_add, ontap: () {}),
            SizedBox(
              height: 10,
            ),
            NewContactTile(
                btnName: 'New Group', icon: Icons.group_add, ontap: () {}),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Contacts on CUI APP'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Obx(
              () => Column(
                children: contactController.userList
                    .map(
                      (e) => InkWell(
                        onTap: () {
                          Get.to(ChatPage(userModel: e));
                        },
                        child: ChatTile(
                          imageUrl: e.profileImage ?? AssetsImage.profilePic,
                          name: e.name ?? 'User',
                          lastChat: e.about ?? "Hey What's up",
                          lastTime: '',
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
