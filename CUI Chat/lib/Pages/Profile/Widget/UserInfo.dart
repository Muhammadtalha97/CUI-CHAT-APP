import 'package:cui_chat/Config/Images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Userinfo extends StatelessWidget {
  const Userinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset(AssetsImage.boyPic)],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Talha Choudhary",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Talha@gmail.com",
                      style: Theme.of(context).textTheme.labelLarge,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AssetsImage.profileAudioCall,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Call',
                            style: TextStyle(color: Color(0xff039C00)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(AssetsImage.profileVideoCall,
                              width: 20,
                              // ignore: deprecated_member_use
                              color: const Color(0xffff9900)),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Video',
                            style: TextStyle(color: Color(0xffff9900)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AssetsImage.appiconSVG,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Chat',
                            style: TextStyle(color: Color(0xff0057ff)),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
