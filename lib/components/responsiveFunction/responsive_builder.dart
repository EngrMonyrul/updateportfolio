import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget? mobileView, largeMobileView, tabView, webView;

  const ResponsiveBuilder({super.key, this.mobileView, this.largeMobileView, this.tabView, this.webView});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileView!;
        } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 800) {
          return largeMobileView!;
        } else if (constraints.maxWidth >= 800 && constraints.maxWidth < 1100) {
          return tabView!;
        } else {
          return webView!;
        }
      },
    );
  }
}
