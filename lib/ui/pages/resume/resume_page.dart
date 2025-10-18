import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/extension/app_color.dart';
import 'package:portfolio/extension/size_extension.dart';
import 'package:portfolio/generated/assets.gen.dart';
import 'package:portfolio/ui/components/bottom/p_bottom_widget.dart';
import 'package:portfolio/ui/components/button/p_button.dart';

class ResumePage extends StatefulWidget {
  static const route = '/ResumePage';
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  final _scrollCtrl = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollCtrl,
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * .03),
      children: [
        SafeArea(child: Container()),

        Text(
          'EDUCATION',
          textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
            fontSize: MediaQuery.of(context).size.width > 600 ? 40 : 25,
            color: AppColor.white,
            fontWeight: FontWeight.bold,
          ),
        ).paddingSymmetric(horizontal: MediaQuery.of(context).size.width * .08),
        24.height,
        //
        _eduW(
          'Bachelor of Software Development',
          'Norton University',
          '2021 - 2025',
        ),
        48.height,
        _eduW(
          'Graduated High School',
          'at Hun Sen Phnum San Tuk High School, Kampong Thum',
          '2018 - 2021',
        ),
        48.height,
        _eduW(
          'Finish Secondary School',
          'at Chroab Primary School, Kampong Thum',
          '2015 - 2018',
        ),
        60.height,

        //experience
        Text(
          'WORK EXPERIENCE',
          textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
            fontSize: MediaQuery.of(context).size.width > 600 ? 40 : 25,
            color: AppColor.white,
            fontWeight: FontWeight.bold,
          ),
        ).paddingSymmetric(horizontal: MediaQuery.of(context).size.width * .08),
        24.height,
        _exerienceW(),

        60.height,
        //download cv
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PButton(
              child: Row(
                children: [
                  AppAssets.icons.icDownload.image(
                    height: 18,
                    color: Colors.white,
                  ),
                  8.width,
                  Text(
                    'Download My CV',
                    style: GoogleFonts.rubik(
                      color: AppColor.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              onTap: () async {
                // _cvAsBytes();
                // await FileSaver.instance.saveFile(
                //   name: "yoeung_seyhak_cv",
                //   filePath: AppAssets.pdf.cv,
                //   fileExtension: "pdf",
                //   mimeType: MimeType.pdf,
                // );

                // Load bytes from asset (works on Web!)
                final bytes = await rootBundle.load(AppAssets.pdf.cv);
                final Uint8List pdfBytes = bytes.buffer.asUint8List();

                // Save it using FileSaver
                await FileSaver.instance.saveFile(
                  name: 'yoeung_seyhak_cv',
                  bytes: pdfBytes,
                  fileExtension: 'pdf',
                  mimeType: MimeType.pdf,
                );
              },
            ),
          ],
        ),
        48.height,
        PBottomWidget(),
      ],
    );
  }

  Widget _eduW(String t1, String t2, String t3) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade900,
      ),
      padding: EdgeInsets.symmetric(vertical: 36, horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8,
            children: [
              Text(
                t1,
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'at $t2',
                style: GoogleFonts.rubik(
                  fontSize: 15,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          Text(
            t3,
            style: GoogleFonts.rubik(fontSize: 14, color: Colors.grey.shade400),
          ),
        ],
      ),
    ).paddingSymmetric(horizontal: MediaQuery.of(context).size.width * .08);
  }

  Widget _exerienceW() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade900,
      ),
      padding: EdgeInsets.symmetric(vertical: 36, horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Junior Mobile Developer',
            style: GoogleFonts.rubik(
              fontSize: 20,
              color: AppColor.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Cotafer Co.,Ltd  l  Phnum Penh',
            style: GoogleFonts.rubik(
              fontSize: 15,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w500,
            ),
          ),
          8.height,
          Text(
            'May 2024 - Oct 2025',
            style: GoogleFonts.rubik(fontSize: 14, color: Colors.grey.shade400),
          ),
          16.height,
          Text(
            'Assisted in developing and testing mobile applications, collaborating with the development team to fix bugs, implement new features, and ensure optimal performance across various devices.',
            style: GoogleFonts.rubik(fontSize: 14, color: Colors.grey.shade400),
          ),
        ],
      ),
    ).paddingSymmetric(horizontal: MediaQuery.of(context).size.width * .08);
  }
}
