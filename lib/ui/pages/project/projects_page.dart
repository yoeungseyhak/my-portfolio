import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/extension/app_color.dart';
import 'package:portfolio/extension/size_extension.dart';
import 'package:portfolio/generated/assets.gen.dart';

class ProjectsPage extends StatefulWidget {
  static const route = '/ProjectsPage';
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final _scrollCtrl = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollCtrl,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .08,
        vertical: MediaQuery.of(context).size.width * .03,
      ),
      children: [
        SafeArea(child: Container()),

        Center(
          child: Text(
            'COLLABORATIVE PROJECTS',
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
              fontSize: MediaQuery.of(context).size.width > 600 ? 40 : 25,
              color: AppColor.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        24.height,
        _projectW(),
        100.height,
      ],
    );
  }

  Widget _projectW() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .04,
        vertical: MediaQuery.of(context).size.width * .04,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (MediaQuery.of(context).size.width > 600)
                Expanded(child: _gnkW()),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AppAssets.images.books
                          .image(
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.width * 0.3,
                          )
                          .paddingOnly(
                            bottom: MediaQuery.of(context).size.width * 0.05,
                          ),
                      (MediaQuery.of(context).size.width * 0.03).width,
                      AppAssets.images.profile
                          .image(
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.width * 0.3,
                          )
                          .paddingOnly(
                            top: MediaQuery.of(context).size.width * 0.05,
                          ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          if (MediaQuery.of(context).size.width <= 600) _gnkW(),
        ],
      ),
    );
  }

  Widget _gnkW() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AppAssets.images.unnamed.provider(),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width * 0.01,
                ),
              ),
              clipBehavior: Clip.antiAlias,
              width: MediaQuery.of(context).size.width * .06,
              height: MediaQuery.of(context).size.width * .06,
            ),
            (MediaQuery.of(context).size.width * 0.02).width,
            Text(
              'Gonoka App',
              style: GoogleFonts.robotoCondensed(
                color: AppColor.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
        (MediaQuery.of(context).size.width * 0.02).height,
        //
        Text(
          'More than just an eBook platform — it’s a place where stories meet community. With Gonoka, you don’t just read; you connect, share, and grow. It combines the joy of discovering books with the power of social interaction, encouraging you to become the best version of yourself through the habit of reading.',
          style: GoogleFonts.robotoCondensed(
            color: Colors.grey.shade300,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
