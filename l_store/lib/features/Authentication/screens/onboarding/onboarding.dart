import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:l_store/features/Authentication/controllers/onboarding_controller.dart';
import 'package:l_store/features/Authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:l_store/features/Authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:l_store/features/Authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:l_store/utils/constants/colors.dart';
import 'package:l_store/utils/constants/image_strings.dart';
import 'package:l_store/utils/constants/sizes.dart';
import 'package:l_store/utils/constants/text_strings.dart';
import 'package:l_store/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';
import 'package:l_store/utils/helpers/helper_functions.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Creating instance of on boarding controller
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),
          const OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(), 
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(), 
          backgroundColor: dark ? TColors.primary : TColors.black),
        child: const Icon(Iconsax.arrow_right_3),),);
  }
}


