import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeDetalis extends StatelessWidget {
  const IncomeDetalis({super.key});
  static const items = [
    ItemDetailsModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xFF208BC7),
    ),
    ItemDetailsModel(
      title: 'Design Product',
      value: '25%',
      color: Color(0xFF4DB7F2),
    ),
    ItemDetailsModel(
      title: 'Product royalti',
      value: '20%',
      color: Color(0xFF064060),
    ),
    ItemDetailsModel(
      title: 'other',
      value: '22%',
      color: Color(0xFFE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: items.map((e) => ItemDetails(itemdetailsModel: e)).toList());
    // return ListView.builder(
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return ItemDetails(itemdetailsModel: items[index]);
    //     });
  }
}
