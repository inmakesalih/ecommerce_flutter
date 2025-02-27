import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.onPressed});
  final String image, title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(
                top: TSizes.appBarHeight,
                bottom: TSizes.defaultSpace,
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace) *
            2,
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed, child: Text(TTexts.tContinue))),
          ],
        ),
      )),
    );
  }
}
