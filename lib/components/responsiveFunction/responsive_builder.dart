import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget? mobileView, tabView, webView;

  const ResponsiveBuilder({super.key, this.mobileView, this.tabView, this.webView});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileView!;
        } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 1100) {
          return tabView!;
        } else {
          return webView!;
        }
      },
    );
  }
}
