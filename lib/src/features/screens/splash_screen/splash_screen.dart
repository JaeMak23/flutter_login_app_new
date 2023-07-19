import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 0 : -30,
            left: animate ? 0 : -30,
            child: const Image(
              image: AssetImage(mSplashTopIcon),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 80 : 120,
            left: animate ? mDefaultSize : -80,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1600),
              opacity: animate ? 1: 0,
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
           AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            bottom: 0,
            top: 0,
            right:animate? 0 : 200,
            left: animate? 0 : 200,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: animate ?1 : 0,
              child:  const Image(
                image: AssetImage(mSplashImage),
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

  Future startAnimation() async {
    await Future.delayed(const Duration(microseconds: 500));
    setState(() => animate = true);
    await Future.delayed(const Duration(milliseconds: 5000));
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => WelcomeScreen(),
    //   ),
    // );
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
