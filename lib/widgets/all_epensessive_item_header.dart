import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllEpensessiveItemHeader extends StatelessWidget {
  const AllEpensessiveItemHeader(
      {super.key,
      required this.image,
      this.imageBackgroundColor,
      this.imageColor});
  final String image;
  final Color? imageBackgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: imageBackgroundColor ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset(image,
                colorFilter: ColorFilter.mode(
                    imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn)),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(Icons.arrow_back_ios_new_outlined,
              color:
                  imageColor == null ? const Color(0xFF064061) : Colors.white),
        )
      ],
    );
  }
}
