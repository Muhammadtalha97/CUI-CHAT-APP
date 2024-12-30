import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.lastChat,
      required this.lastTime});
  final String imageUrl;
  final String name;
  final String lastChat;
  final String lastTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    imageUrl,
                    width: 70,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    lastChat,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ],
          ),
          Text(
            lastTime,
            style: Theme.of(context).textTheme.labelMedium,
          )
        ],
      ),
    );
  }
}
