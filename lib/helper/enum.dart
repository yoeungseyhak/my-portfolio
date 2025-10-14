import 'package:portfolio/generated/assets.gen.dart';

enum MySocial {
  telegram,
  gitHub,
  linkedIn;

  AssetGenImage get icon {
    return switch (this) {
      telegram => AppAssets.icons.icTelegram,
      gitHub => AppAssets.icons.icGithub,
      linkedIn => AppAssets.icons.icLinkedin,
    };
  }

  String get url {
    return switch (this) {
      telegram => 'https://t.me/yoeungseyhak',
      gitHub => 'https://github.com/yoeungseyhak',
      linkedIn => 'https://www.linkedin.com/in/yoeung-seyhak',
    };
  }
}

enum MySkill {
  flutter('Flutter'),
  dart('Dart'),
  firebase('Firebase'),
  python('Python'),
  java('Java'),
  figma('Figma'),
  kotlin('Kotlin'),
  swift('Swift');

  const MySkill(this.name);
  final String name;

  AssetGenImage get icon {
    return switch (this) {
      flutter => AppAssets.icons.icFlutter,
      dart => AppAssets.icons.icDart,
      firebase => AppAssets.icons.icFirebase,
      python => AppAssets.icons.icPython,
      java => AppAssets.icons.icJava,
      figma => AppAssets.icons.icFigma,
      kotlin => AppAssets.icons.icKotlin,
      swift => AppAssets.icons.icSwift,
    };
  }
}
