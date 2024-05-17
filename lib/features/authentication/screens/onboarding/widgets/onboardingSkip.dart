import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controllers.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () => onboardingController.instance.skipPage(),
            child: const Text("Skip")));
  }
}
