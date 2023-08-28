import 'dart:async';
import 'package:gloyey/util/images.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gloyey/helper/route_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _route() {
    Timer(const Duration(seconds: 2), () async {
      Get.offAllNamed(RouteHelper.bottomBar);
    });
  }

  void initState() {
    super.initState();
    _route();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Theme.of(context).cardColor,
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                width: Get.width,
                child: Image.asset(Images.splash, width: Get.height * 0.1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
