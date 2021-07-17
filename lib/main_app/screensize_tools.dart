import 'package:flutter/material.dart';

Size ScreenSize(BuildContext context) {
  debugPrint("Screen Size = " + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double ScreenHeight(BuildContext context) {
  debugPrint("Screen Height = " + ScreenSize(context).height.toString());
  return ScreenSize(context).height;
}

double ScreenWidth(BuildContext context) {
  debugPrint("Screen Width = " + ScreenSize(context).width.toString());
  return ScreenSize(context).width;
}

double ScreenArea(BuildContext context) {
  return ScreenWidth(context) * ScreenHeight(context);
}
