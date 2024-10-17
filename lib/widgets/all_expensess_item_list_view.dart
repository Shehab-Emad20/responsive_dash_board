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
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpenssesItem(itemModel: e)))
      //     .toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpenssesItem(
                itemModel: item,
                isSelected: false,
              ),
            ),
          );
        } else {
          return Expanded(
              child: AllExpenssesItem(itemModel: item, isSelected: false));
        }
      }).toList(),
    );
  }
}
