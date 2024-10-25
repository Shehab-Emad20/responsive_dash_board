import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class DtailedIcomeChart extends StatefulWidget {
  const DtailedIcomeChart({super.key});

  @override
  State<DtailedIcomeChart> createState() => _DtailedIcomeChart();
}

class _DtailedIcomeChart extends State<DtailedIcomeChart> {
  int activIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchRespons) {
            activIndex =
                pieTouchRespons?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              titlePositionPercentageOffset: activIndex == 0 ? 1.5 : null,
              title: activIndex == 0 ? 'Design service' : '40%',
              value: 40,
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activIndex == 0 ? null : Colors.white,
              ),
              radius: activIndex == 1 ? 60 : 50,
              color: const Color(0xFF208BC7)),
          PieChartSectionData(
              titlePositionPercentageOffset: activIndex == 1 ? 2.2 : null,
              radius: activIndex == 1 ? 60 : 50,
              value: 25,
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activIndex == 2 ? null : Colors.white,
              ),
              title: activIndex == 1 ? 'Design Product' : '25%',
              color: const Color(0xFF4DB7F2)),
          PieChartSectionData(
              titlePositionPercentageOffset: activIndex == 2 ? 1.4 : null,
              radius: activIndex == 2 ? 60 : 50,
              value: 20,
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activIndex == 3 ? null : Colors.white,
              ),
              title: activIndex == 2 ? 'Product royalti' : '20%',
              color: const Color(0xFF064060)),
          PieChartSectionData(
              titlePositionPercentageOffset: activIndex == 3 ? 1.4 : null,
              radius: activIndex == 3 ? 60 : 50,
              value: 22,
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activIndex == 4 ? null : Colors.white,
              ),
              title: activIndex == 3 ? 'other' : '22%',
              color: const Color(0xFFE2DECD)),
        ]);
  }
}
