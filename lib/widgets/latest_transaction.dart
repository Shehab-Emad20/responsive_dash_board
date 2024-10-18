import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
