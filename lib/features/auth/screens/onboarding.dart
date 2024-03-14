import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
// import '../../../../utils/constants/image_strings.dart';
// import '../../..';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  // Image.asset("assets/images/OnBoardingImage.gif"),
                  Image(
                    width: THelperFunctions.screenWidth() * 0.8,
                    height: THelperFunctions.screenHeight() * 0.6,
                    image: const AssetImage(TImage.onboardingImage1),
                  ),
                  Text(
                    TTexts.onBoardingTitlel,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: TSizes.spacebtwItems,
                  ),
                  Text(
                    TTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
}
