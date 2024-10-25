import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_Layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context, context);
    return Scaffold(
        key: scaffoldKey,
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? AppBar(
                elevation: 0,
                backgroundColor: const Color(0xFFFAFAFA),
                leading: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              )
            : null,
        backgroundColor: const Color(0xFFF7F9FA),
        drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? const CustomDrawer()
            : null,
        body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          desktopLayout: (context) => const DashboardTabletLayout(),
          tabletLayout: (context) => const DashboardDesktopLayout(),
        ));
  }
}
