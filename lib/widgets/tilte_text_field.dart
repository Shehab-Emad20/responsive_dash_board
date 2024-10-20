import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class TilteTextField extends StatelessWidget {
  const TilteTextField({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Customer name',
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(height: 12),
        const CustomTextField(
          hint: 'Enter customer name',
        )
      ],
    );
  }
}
