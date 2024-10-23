import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_detalis.dart';
import 'package:responsive_dash_board/widgets/incomesectioheader.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
        child: Column(children: [
      IncomeSectioHeader(),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: IncomeChart()),
            Expanded(child: IncomeDetalis())
          ],
        ),
      )
    ]));
  }
}
