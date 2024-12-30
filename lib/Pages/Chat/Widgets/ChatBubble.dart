import '/Config/Images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(
      {super.key,
      required this.message,
      required this.isComing,
      required this.time,
      required this.status,
      required this.imageUrl});
  final String message;
  final bool isComing;
  final String time;
  final String status;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment:
            isComing ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width / 1.3,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(10),
                topRight: const Radius.circular(10),
                bottomLeft: isComing
                    ? const Radius.circular(0)
                    : const Radius.circular(10),
                bottomRight: isComing
                    ? const Radius.circular(10)
                    : const Radius.circular(0),
              ),
            ),
            child: imageUrl == ""
                ? Text(message)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(imageUrl)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(message)
                    ],
                  ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment:
                isComing ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              isComing
                  ? Text(
                      time,
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  : Row(
                      children: [
                        Text(
                          time,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        SvgPicture.asset(
                          AssetsImage.chatStatusSVG,
                          width: 20,
                        )
                      ],
                    ),
            ],
          )
        ],
      ),
    );
  }
}
