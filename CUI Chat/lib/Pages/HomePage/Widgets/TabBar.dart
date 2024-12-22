import 'package:flutter/material.dart';

myTabBar(TabController tabController, BuildContext context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: TabBar(
      controller: tabController,
      labelStyle: Theme.of(context).textTheme.bodyLarge,
      indicatorWeight: 4,
      indicatorSize: TabBarIndicatorSize.label,
      unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
      tabs: const [
        Text('Chats'),
        Text('Groups'),
        Text('Calls'),
      ],
    ),
  );
}
