import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            right: 0,
            child: Image(
              image: AssetImage(mSplashTopIcon),
            ),
          ),
          Positioned(
            top: 80,
            left: mDefaultSize,
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
          const Positioned(
            bottom: 0,
            top: 0,
            right: 0,
            left: 0,
            child: Image(
              image: AssetImage(mSplashImage),
            ),
          ),
          const Positioned(
            bottom: 40,
            right: mDefaultSize,
            child: CircleWidget(color: mPrimaryColor,)
          ),
          const Positioned(
            bottom: 40,
            right: mDefaultSize + 20,
            child: CircleWidget(color :Colors.pink),
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
