import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 420,
        ),
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(
          height: 20,
        ),
        const MyCardsPageView(),
        const SizedBox(
          height: 20,
        ),
        const DotsIndicator()
      ],
    );
  }
}
