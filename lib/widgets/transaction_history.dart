import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction history',
              style: AppStyles.styleSemiBold20,
            ),
            Text(
              'See All',
              style: AppStyles.styleMedium16,
            ),
          ],
        )
      ],
    );
  }
}
