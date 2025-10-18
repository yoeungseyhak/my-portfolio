import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/extension/app_color.dart';
import 'package:portfolio/extension/padding_extension.dart';
import 'package:portfolio/extension/size_extension.dart';
import 'package:portfolio/ui/components/contact/contact_me.dart';

class PAlertDialog {
  static showDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return Material(
          color: Colors.transparent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width / 1.5,
                  // height: MediaQuery.of(context).size.width / 2,
                  child: _findMe().paddingFromLTRB(48, 36, 48, 48),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Widget _findMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            Expanded(
              flex: 2,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'CONTACT ME',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),

            Expanded(
              child: Align(
                alignment: AlignmentGeometry.centerRight,
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.close_rounded),
                ),
              ),
            ),
          ],
        ),
        24.height,
        Center(child: ContactMe()),
      ],
    );
  }
}
