import 'package:cui_chat/Config/Images.dart';
import 'package:cui_chat/Controller/SplaceController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Splacepage extends StatelessWidget {
  const Splacepage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SplaceController splaceController = Get.put(SplaceController());
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AssetsImage.appiconSVG),
      ),
    );
  }
}
