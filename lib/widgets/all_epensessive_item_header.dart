import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllEpensessiveItemHeader extends StatelessWidget {
  const AllEpensessiveItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(image),
        ),
      ],
    );
  }
}
