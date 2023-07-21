import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/features/models/modal_on_boarding.dart';
import 'package:flutter_login_app/src/features/screens/on_boarding/on_boarding_widget.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../constants/colors.dart';
import '../../constants/text_strings.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get find => Get.find();
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: mOnBoardingImage1,
        title: mOnBoardingTitle1,
        subTitle: mOnBoardingSubTitle1A,
        counterText: mOnBoardingCounter1,
        bgColor: mOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: mOnBoardingImage2,
        title: mOnBoardingTitle2,
        subTitle: mOnBoardingSubTitle2A,
        counterText: mOnBoardingCounter2,
        bgColor: mOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: mOnBoardingImage3,
        title: mOnBoardingTitle3,
        subTitle: mOnBoardingSubTitle3A,
        counterText: mOnBoardingCounter3,
        bgColor: mOnBoardingPage3Color,
      ),
    ),
  ];

  onPageChangeCallback(int activepageindex) =>
      currentPage.value = activepageindex;

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
   int nextPage = controller.currentPage + 1;
   controller.animateToPage(page: nextPage);
  } 
}
