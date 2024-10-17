import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_epensessive_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFFF1F1F1),
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllEpensessiveItemHeader(image: itemModel.image),
          Text(
            itemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(height: 16),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFFF1F1F1),
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllEpensessiveItemHeader(image: itemModel.image),
          Text(
            itemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(height: 16),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
