import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';

import 'package:responsive_dash_board/widgets/in_active_all_expensess_item.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensessItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(itemModel: itemModel)
        : InActiveAllExpensessItem(itemModel: itemModel);
  }
}
