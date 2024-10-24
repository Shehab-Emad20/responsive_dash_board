import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemdetailsModel});
  final ItemDetailsModel itemdetailsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: ShapeDecoration(
                  color: itemdetailsModel.color, shape: const OvalBorder()),
            ),
            const SizedBox(width: 12),
            Text(itemdetailsModel.title, style: AppStyles.styleRegular16),
            const SizedBox(width: 24),
            Text(itemdetailsModel.value, style: AppStyles.styleMedium16),
          ],
        ),
      ),
    );
    // return ListTile(
    //   leading: Container(
    //     width: 12,
    //     height: 12,
    //     decoration: ShapeDecoration(
    //         color: itemdetailsModel.color, shape: const OvalBorder()),
    //   ),
    //   title: Text(itemdetailsModel.title, style: AppStyles.styleRegular16),
    //   trailing: Text(itemdetailsModel.value, style: AppStyles.styleMedium16),
    // );
  }
}
