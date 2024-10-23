import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemdetailsModel});
  final ItemDetailsModel itemdetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            color: itemdetailsModel.color, shape: const OvalBorder()),
      ),
      title: Text(itemdetailsModel.title, style: AppStyles.styleRegular16),
      trailing: Text(itemdetailsModel.value, style: AppStyles.styleMedium16),
    );
  }
}
