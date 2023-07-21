import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/features/models/modal_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
final size = MediaQuery.of(context).size;
    

    return Container(
      padding: const EdgeInsets.all(mDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Image(
            image:  AssetImage(model.image),height: size.height*0.3, 
          ),
          Column(
            children: [
              Text(
                model.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall
              ),
               Text(
                model.subTitle,
                textAlign: TextAlign.center,
              )
            ],
          ),
           Text(
            model.counterText,
           style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 50.0,)
        ],
      ),
    );
  }
}
