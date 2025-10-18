import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/extension/app_color.dart';
import 'package:portfolio/helper/enum.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 8,
      spacing: 16,
      children: MySocial.values.map(_socialBtn).toList(),
    );
  }

  Widget _socialBtn(MySocial s) {
    return InkWell(
      onTap: () async {
        final Uri url = Uri.parse(s.url);
        if (!await launchUrl(
          url,
          mode: LaunchMode.externalApplication, // opens in new tab (web)
        )) {
          //
        }
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 40,
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColor.whiteOrBlack),
          borderRadius: BorderRadius.circular(10),
          color: AppColor.backgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: AppColor.whiteOrBlack.withValues(alpha: 0.5),
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: s.icon.image(color: AppColor.whiteOrBlack),
      ),
    );
  }
}
