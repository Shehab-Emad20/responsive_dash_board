import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/incom_section_body.dart';
import 'package:responsive_dash_board/widgets/incomesectioheader.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Column(
        children: [IncomeSectioHeader(), IncomSectionBody()],
      ),
    );
  }
}
