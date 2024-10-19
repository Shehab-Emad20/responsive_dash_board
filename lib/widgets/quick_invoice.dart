import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_hdeder.dart';
import 'package:responsive_dash_board/widgets/tilte_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Column(
        children: [
          QuickInvoiceHdeder(),
          LatestTransaction(),
          Divider(
            height: 48,
          ),
          TilteTextField(
            title: 'Customer name',
            hint: 'Enter customer name',
          ),
        ],
      ),
    );
  }
}
