import 'package:flutter/material.dart';

import '../theme/AppFontFamilies.dart';

class AppTypography {
  // Normal Text
  static const TextStyle normalText = TextStyle(
    fontSize: 16.0,
    fontFamily: AppFontFamilies.normal,
    fontWeight: FontWeight.normal,
    overflow: TextOverflow.ellipsis,
  );

  // Normal Text with medium font style
  static const TextStyle normalMediumText = TextStyle(
    fontSize: 16.0,
    fontFamily: AppFontFamilies.normal,
    fontWeight: FontWeight.w500,
    overflow: TextOverflow.ellipsis,
  );

  static const TextStyle normalSmallText = TextStyle(
    fontSize: 14,
    fontFamily: AppFontFamilies.normal,
    fontWeight: FontWeight.normal,
    overflow: TextOverflow.ellipsis,
  );

  // Small Headings
  static const TextStyle smallHeading = TextStyle(
    fontSize: 18.0,
    fontFamily: AppFontFamilies.heading,
    fontWeight: FontWeight.w600,
    overflow: TextOverflow.ellipsis,
  );

  // Medium Headings
  static const TextStyle mediumHeading = TextStyle(
    fontSize: 28.0,
    fontFamily: AppFontFamilies.heading,
    fontWeight: FontWeight.w600,
    overflow: TextOverflow.ellipsis,
  );

  // Main Headings
  static const TextStyle mainHeading = TextStyle(
      fontSize: 34.0,
      fontFamily: AppFontFamilies.heading,
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis);
}