import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensses_item.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  final items = const [
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
  int selectedIndex = 0;

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
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpenssesItem(
                  itemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllExpenssesItem(
                  itemModel: item, isSelected: selectedIndex == index),
            ),
          );
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
