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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpenssesItem(
              itemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 8), // Space between items
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpenssesItem(
              itemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpenssesItem(
              itemModel: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );

    // return Row(
    //   children: items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;

    //     return Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           updateIndex(index);
    //         },
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //           child: AllExpenssesItem(
    //             itemModel: item,
    //             isSelected: selectedIndex == index,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
