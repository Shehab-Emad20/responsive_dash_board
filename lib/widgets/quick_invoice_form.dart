import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/tilte_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TilteTextField(
                    title: 'Customer name', hint: 'Enter Customer name')),
            SizedBox(width: 16),
            Expanded(
              child: TilteTextField(
                  title: 'Customer Email', hint: 'Enter Customer Email'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: TilteTextField(
                    title: 'Item name', hint: 'Enter Customer name')),
            SizedBox(width: 16),
            Expanded(
              child: TilteTextField(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
      ],
    );
  }
}