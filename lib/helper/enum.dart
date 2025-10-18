import 'package:portfolio/generated/assets.gen.dart';

enum MySocial {
  telegram,
  gitHub,
  linkedIn,
  email;

  AssetGenImage get icon {
    return switch (this) {
      telegram => AppAssets.icons.icTelegram,
      gitHub => AppAssets.icons.icGithub,
      linkedIn => AppAssets.icons.icLinkedin,
      email => AppAssets.icons.icEmail,
    };
  }

  String get url {
    return switch (this) {
      telegram => 'https://t.me/yoeungseyhak',
      gitHub => 'https://github.com/yoeungseyhak',
      linkedIn => 'https://www.linkedin.com/in/yoeung-seyhak',
      email =>
        'https://mail.google.com/mail/?view=cm&fs=1&to=seyhakyoeung@gmail.com',
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
