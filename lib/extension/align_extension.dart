import 'package:flutter/material.dart';

extension AlignExtension on Widget {
  Widget get alignBottomCenter =>
      Align(alignment: Alignment.bottomCenter, child: this);
  Widget get alignBottomLeft =>
      Align(alignment: Alignment.bottomLeft, child: this);
  Widget get alignBottomRight =>
      Align(alignment: Alignment.bottomRight, child: this);
  Widget get alignCenter => Align(alignment: Alignment.center, child: this);
  Widget get alignCenterLeft =>
      Align(alignment: Alignment.centerLeft, child: this);
  Widget get alignCenterRight =>
      Align(alignment: Alignment.centerRight, child: this);
  Widget get alignTopCenter =>
      Align(alignment: Alignment.topCenter, child: this);
  Widget get alignTopLeft => Align(alignment: Alignment.topLeft, child: this);
  Widget get alignTopRight => Align(alignment: Alignment.topRight, child: this);
}
