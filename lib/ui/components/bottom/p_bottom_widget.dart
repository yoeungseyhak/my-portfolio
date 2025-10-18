import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/extension/app_color.dart';

class PBottomWidget extends StatelessWidget {
  const PBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      padding: EdgeInsets.symmetric(horizontal: 48, vertical: 48),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '@2025 Yoeung Seyhak',

              style: GoogleFonts.rubik(
                fontSize: 15,
                color: AppColor.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: ' All Rights Reserved.',

              style: GoogleFonts.rubik(
                fontSize: 15,
                color: Colors.grey.shade300,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
