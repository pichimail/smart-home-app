import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double defaultSize = 0;
  static Orientation orientation = Orientation.portrait;

  static void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
    orientation = mediaQuery.orientation;
    defaultSize = screenWidth / 100;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  if (SizeConfig.screenHeight == 0) {
    return inputHeight;
  }

  const double designHeight = 812.0;
  return (inputHeight / designHeight) * SizeConfig.screenHeight;
}

// Get the proportionate width as per screen size
double getProportionateScreenWidth(double inputWidth) {
  if (SizeConfig.screenWidth == 0) {
    return inputWidth;
  }

  const double designWidth = 375.0;
  return (inputWidth / designWidth) * SizeConfig.screenWidth;
}
