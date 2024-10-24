import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income.dart';
import 'package:responsive_dash_board/widgets/my_cards_transaction_histroy_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                top: 40.0,
              ),
              child: AllExpensesAndQuickInvoiceSection(),
            )),
        SizedBox(width: 24),
        Expanded(
            child: Column(
          children: [
            SizedBox(height: 40),
            MyCardsTransactionHistroySection(),
            SizedBox(height: 24),
            Expanded(child: Income()),
          ],
        )),
      ],
    );
  }
}
