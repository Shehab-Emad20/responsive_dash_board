import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7F9FA),
        body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const DashboardDesktopLayout(),
        ));
  }
}
