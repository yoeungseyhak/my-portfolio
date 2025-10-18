import 'package:flutter/material.dart';
import 'package:portfolio/extension/app_color.dart';

class PButton extends StatelessWidget {
  const PButton({super.key, required this.child, required this.onTap});
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Ink(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 28),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: AppColor.mainColor,
              // offset: Offset(0, 5),
            ),
          ],
          color: AppColor.mainColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
