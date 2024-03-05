import 'package:flutter/widgets.dart';

class MediaQueryHelper {
  final BuildContext context;

  MediaQueryHelper(this.context);

  // Get the screen width
  double getScreenWidth() {
    return MediaQuery.of(context).size.width;
  }

  // Get the screen height
  double getScreenHeight() {
    return MediaQuery.of(context).size.height;
  }

  // Get the screen orientation (portrait or landscape)
  Orientation getOrientation() {
    return MediaQuery.of(context).orientation;
  }

  // Check if the screen is in portrait mode
  bool isPortrait() {
    return getOrientation() == Orientation.portrait;
  }

  // Check if the screen is in landscape mode
  bool isLandscape() {
    return getOrientation() == Orientation.landscape;
  }

  double getWidthPercentage(double percentage) {
    final screenWidth = getScreenWidth();
    return (percentage / 100) * screenWidth;
  }

  double getHeightPercentage(double percentage) {
    final screenHeight = getScreenHeight();
    return (percentage / 100) * screenHeight;
  }

}