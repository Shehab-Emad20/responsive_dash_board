import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class QuickInvoiceHdeder extends StatelessWidget {
  const QuickInvoiceHdeder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Colors.white,
          ),
          child: const Icon(Icons.add, color: Color(0xff4EB7F2)),
        )
      ],
    );
  }
}
