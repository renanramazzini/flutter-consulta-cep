import 'package:flutter/material.dart';

enum FontStyle {
  field,
  title,
  button,
  titleNormal,
  dialogSmall,
}

extension FontStyleExt on FontStyle {
  TextStyle get getText {
    switch (this) {
      case FontStyle.field:
        return const TextStyle(
          // fontFamily: 'Roboto',
          fontSize: 18,
          fontWeight: FontWeight.w300,
          letterSpacing: 0,
        );
      case FontStyle.title:
        return const TextStyle(
          // fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.w900,
          letterSpacing: 0,
        );

      default:
        return const TextStyle(
          // fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );
    }
  }
}
