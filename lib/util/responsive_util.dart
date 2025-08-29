import 'package:flutter/material.dart';

class ResponsiveUtil {

  static double deviceWidth({required BuildContext context}) =>
      MediaQuery.sizeOf(context).width;

  static bool isMobile({required BuildContext context}) =>
      deviceWidth(context: context) <= 450;

}
