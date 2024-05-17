import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class Tdevider extends StatelessWidget {
  const Tdevider({super.key, required this.dividerText});
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
            child: Divider(
          color: TColors.darkGrey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Flexible(
            child: Divider(
          color: TColors.darkGrey,
          thickness: 0.5,
          indent: 5,
          endIndent: 60,
        ))
      ],
    );
  }
}
