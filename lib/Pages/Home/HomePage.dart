import '/Config/Images.dart';
import '/Config/Strings.dart';
import '/Controller/ProfileController.dart';
import '/Pages/Home/Widgets/ChatLists.dart';
import '/Pages/Home/Widgets/TabBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    ProfileController profileController = Get.put(ProfileController());
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(AssetsImage.appiconSVG),
        ),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () => {Get.toNamed('/profilePage')},
              icon: const Icon(Icons.more_vert))
        ],
        bottom: myTabBar(tabController, context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/contactPage");
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: TabBarView(
          controller: tabController,
          children: [
            const ChatLists(),
            ListView(
              children: const [
                ListTile(
                  title: Text('Name'),
                )
              ],
            ),
            ListView(
              children: const [
                ListTile(
                  title: Text('Name'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
