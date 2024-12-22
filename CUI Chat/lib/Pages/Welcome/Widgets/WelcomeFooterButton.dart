import 'package:cui_chat/Config/Images.dart';
import 'package:cui_chat/Config/Strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Welcomefooterbutton extends StatelessWidget {
  const Welcomefooterbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideAction(
          onSubmit: () {
            Get.offAllNamed("/authPage");
            return null;
          },
          text: WelcomePageString.slideToStart,
          textStyle: Theme.of(context).textTheme.labelLarge,
          sliderButtonIcon: SvgPicture.asset(
            AssetsImage.plugSVG,
            width: 25,
          ),
          submittedIcon: SvgPicture.asset(
            AssetsImage.connectSVG,
            width: 25,
          ),
          innerColor: Theme.of(context).colorScheme.primary,
          outerColor: Theme.of(context).colorScheme.primaryContainer,
        )
      ],
    );
  }
}
