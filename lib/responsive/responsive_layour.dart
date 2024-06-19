import 'package:flutter/material.dart';

class ResponsvieLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsvieLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 600) {
        return webScreenLayout;
      }
      return mobileScreenLayout;
    });
  }
}
