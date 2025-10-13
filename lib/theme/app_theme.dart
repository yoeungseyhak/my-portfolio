import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/extension/app_color.dart';

part 'light_theme.dart';
part 'dark_theme.dart';

class AppTheme {
  static ThemeData get light => _$lightTheme();
  static ThemeData get dark => _$darkTheme();
}
