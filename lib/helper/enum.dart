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
