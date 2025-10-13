import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/extension/app_color.dart';
import 'package:portfolio/extension/size_extension.dart';
import 'package:portfolio/generated/assets.gen.dart';
import 'package:portfolio/helper/enum.dart';
import 'package:portfolio/ui/components/clipper/hexagon_clipper.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  static const route = '/HomePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          // color: Colors.black,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .08,
            vertical: MediaQuery.of(context).size.width * .04,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _greetW(),

                  // profile
                  _profile(),
                ],
              ),
              if (MediaQuery.of(context).size.width <= 600) ...[
                24.height,
                _descriptionW(), 24.height,
                // button
                _letsTalkBtn(),
                48.height,

                //social
                _findMe(center: true),
                36.height,
                _bestSkill(center: true),
                // _socialAndSkill(),
              ],
            ],
          ),
        ),

        //about me
        Container(
          padding: EdgeInsets.symmetric(
            horizontal:
                MediaQuery.of(context).size.width *
                (MediaQuery.of(context).size.width > 600 ? .04 : .08),
            vertical: MediaQuery.of(context).size.width * .04,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .08,
            vertical: MediaQuery.of(context).size.width * .04,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text(
                'ABOUT ME',
                style: GoogleFonts.rubik(
                  fontSize: MediaQuery.of(context).size.width > 600 ? 40 : 25,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              (MediaQuery.of(context).size.width * 0.01).height,
              Text(
                'I am a Software Development student with hands-on experience as a Mobile Developer. I contributed to real world mobile app projects, enhancing both my technical skills and understanding of collaborative development. I enjoy problem solving, learning new technologies, and creating user-friendly mobile applications. I am now looking for new opportunities to grow further, contribute to innovative projects, and bring value to a dynamic development team.',
                style: GoogleFonts.robotoCondensed(
                  fontSize: MediaQuery.of(context).size.width > 600 ? 18 : 14,
                  color: AppColor.white,
                  wordSpacing: 1.5,
                  height: 2,
                ),
              ),
            ],
          ),
        ),

        //skill
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .08,
            vertical: MediaQuery.of(context).size.width * .04,
          ),
          color: Colors.grey.shade900,
          child: Column(
            children: [
              Text(
                'SKILLS',
                style: GoogleFonts.rubik(
                  fontSize: MediaQuery.of(context).size.width > 600 ? 40 : 25,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              36.height,
              _skillW('Flutter', 0.8),
              24.height,
              _skillW('Dart', 0.8),
            ],
          ),
        ),

        //
        Container(color: Colors.grey.shade900, child: 1000.height),
      ],
    );
  }

  Widget _skillW(String text, double percent) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: GoogleFonts.rubik(
                fontSize: 17,
                color: AppColor.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              '${(percent * 100).toStringAsFixed(0)}%',
              style: GoogleFonts.rubik(
                fontSize: 17,
                color: AppColor.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        6.height,
        LinearProgressIndicator(
          value: percent,
          borderRadius: BorderRadius.circular(20),
          minHeight: 10,
          backgroundColor: AppColor.backgroundColor,
          color: AppColor.mainColor,
        ),
      ],
    );
  }

  Widget _findMe({bool center = false}) {
    return Column(
      crossAxisAlignment: center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text('FIND WITH ME', style: GoogleFonts.rubik()),
        12.height,
        Wrap(
          runSpacing: 8,
          spacing: 16,
          children: MySocial.values.map(_socialBtn).toList(),
        ),
      ],
    );
  }

  Widget _bestSkill({bool center = false}) {
    return Column(
      crossAxisAlignment: center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text('BEST SKILL ON', style: GoogleFonts.rubik()),
        12.height,
        Wrap(
          runSpacing: 8,
          spacing: 16,
          children: [
            MySkill.flutter,
            MySkill.dart,
            MySkill.firebase,
          ].map(_skillItem).toList(),
        ),
      ],
    );
  }

  Widget _skillItem(MySkill s) {
    return Container(
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
      child: s.icon.image(),
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

  Widget _greetW() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (MediaQuery.of(context).size.width * .1).height,
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Hello, ',
                  style: GoogleFonts.rubik(fontSize: 25, color: AppColor.white),
                ),
                TextSpan(
                  text: 'I\'m',
                  style: GoogleFonts.rubik(
                    fontSize: 25,
                    color: AppColor.mainColor,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'YOEUNG SEYHAK',
            style: GoogleFonts.oswald(
              fontSize: 40,
              color: AppColor.mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Flutter developer',
            style: GoogleFonts.rubik(fontSize: 25, color: AppColor.white),
          ),

          if (MediaQuery.of(context).size.width > 600) ...[
            24.height,
            _descriptionW(), 36.height,
            // button
            _letsTalkBtn(),
            48.height,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _findMe()),
                24.width,
                Expanded(child: _bestSkill()),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _descriptionW() {
    return Text(
      'A passionate mobile app developer who loves turning ideas into clean, functional, and user-friendly applications. I specialize in building Flutter apps with smooth UI and responsive design, and I’m constantly learning new technologies to improve my craft.',
      style: GoogleFonts.robotoCondensed(
        color: AppColor.white,
        wordSpacing: 1.5,
      ),
    );
  }

  Widget _profile() {
    return Expanded(
      child: Container(
        alignment: Alignment.topRight,
        child: Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            PhysicalShape(
              clipper: HexagonClipperBG(),
              clipBehavior: Clip.antiAlias,
              color: AppColor.mainColor,
              elevation: 25,
              shadowColor: AppColor.mainColor,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
              ),
            ),

            ClipPath(
              clipper: HexagonClipperFG(),
              child: AppAssets.images.me.image(
                width: MediaQuery.of(context).size.width / 3,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _letsTalkBtn() {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
            child: Row(
              children: [
                Text(
                  'Let\'s Talk',
                  style: GoogleFonts.rubik(
                    color: AppColor.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
