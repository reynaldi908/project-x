// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color containerBG;
  Color textColor;
  Color inactiveText;
  Color thirdcolor;

  TextStyle get title1 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF333333),
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  TextStyle get title2 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF333333),
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  TextStyle get title3 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF333333),
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Open Sans',
        color: Color(0xFF333333),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Open Sans',
        color: textColor,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Open Sans',
        color: primaryColor,
        fontWeight: FontWeight.normal,
        fontSize: 12,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Open Sans',
        color: Color(0xFF333333),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF7BC471);
  Color secondaryColor = const Color(0xFFFF6454);
  Color tertiaryColor = const Color(0xFFFFFFFF);
  Color alternate = const Color(0x00000000);
  Color primaryBackground = const Color(0xFFFFFFFF);
  Color secondaryBackground = const Color(0x00000000);
  Color primaryText = const Color(0xFF333333);
  Color secondaryText = const Color(0xFF7BC471);

  Color containerBG = Color(0xFFF5F5F5);
  Color textColor = Color(0xFF333333);
  Color inactiveText = Color(0xFFB7B7B7);
  Color thirdcolor = Color(0xFFFDD43A);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
