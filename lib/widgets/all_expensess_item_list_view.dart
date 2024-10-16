import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensses_item.dart';

class AllExpensessItemListView extends StatelessWidget {
  const AllExpensessItemListView({super.key});
  static const items = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        date: 'April 2022',
        title: 'Balance',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        date: 'April 2022',
        title: 'Income',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        date: 'April 2022',
        title: 'Expenses',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return AllExpenssesItem(itemModel: items[index]);
      },
    );
  }
}
