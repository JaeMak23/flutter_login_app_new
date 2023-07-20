import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();

    return Scaffold(
      body: Stack(
        children: [
          Obx(()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashScreenController.animate.value ? 0 : -30,
              left: splashScreenController.animate.value ? 0 : -30,
              child: const Image(
                image: AssetImage(mSplashTopIcon),
              ),
            ),
          ),
          Obx(()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashScreenController.animate.value ? 80 : 120,
              left: splashScreenController.animate.value ? mDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mAppName,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      mAppTagLine,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: 0,
              top: 0,
              right: splashScreenController.animate.value ? 0 : 200,
              left: splashScreenController.animate.value ? 0 : 200,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: const Image(
                  image: AssetImage(mSplashImage),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 40,
            right: mDefaultSize,
            child: CircleWidget(
              color: mPrimaryColor,
            ),
          ),
          const Positioned(
            bottom: 40,
            right: mDefaultSize + 20,
            child: CircleWidget(color: Colors.pink),
          ),
        ],
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  final Color color;

  const CircleWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mSplashContainerSize,
      height: mSplashContainerSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
    );
  }
}
