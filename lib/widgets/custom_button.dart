import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          elevation: 0,
          backgroundColor: const Color(0xFF4EB7F2),
        ),
        onPressed: () {},
        child: Text(
          'Send Mony',
          style: AppStyles.styleSemiBold18,
        ),
      ),
    );
  }
}
