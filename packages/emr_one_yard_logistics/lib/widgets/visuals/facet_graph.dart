import 'package:emr_one_core/emr_one_core.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _BarChart extends StatelessWidget {
  const _BarChart(this.facet, this.labelColour);

  final EmrFacetResult facet;
  final Color labelColour;

  @override
  Widget build(BuildContext context) {
    final maxY = facet.values
        .map((e) => e.count)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();

    return BarChart(
      BarChartData(
        groupsSpace: 40,
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: FlBorderData(
          show: false,
        ),
        barGroups: barGroupsFromFacet,
        gridData: const FlGridData(show: false),
        alignment: BarChartAlignment.spaceEvenly,
        maxY: maxY,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: true,
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (group) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 0,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              TextStyle(
                color: Colors.orange[700],
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta) {
    final style = EmrOneConstants.kOpenSans12TextStyle.copyWith(
      color: labelColour,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(facet.values[value.toInt()].textShort, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(),
        topTitles: const AxisTitles(),
        rightTitles: const AxisTitles(),
      );

  LinearGradient get _barsGradient => const LinearGradient(
        colors: [
          Colors.blue,
          Colors.cyan,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );

  List<BarChartGroupData> get barGroupsFromFacet => facet.values
      .asMap()
      .entries
      .map(
        (e) => BarChartGroupData(
          x: e.key,
          barRods: [
            BarChartRodData(
              toY: e.value.count.toDouble(),
              gradient: _barsGradient,
            ),
          ],
          showingTooltipIndicators: [0],
        ),
      )
      .toList();
}

class FacetGraph extends StatefulWidget {
  const FacetGraph({required this.facet, super.key, this.height = 150});

  final EmrFacetResult facet;
  final double height;

  @override
  State<StatefulWidget> createState() => FacetGraphState();
}

class FacetGraphState extends State<FacetGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
        ),
        gradient: LinearGradient(
          colors: <Color>[
            Theme.of(context).colorScheme.surfaceContainerHighest,
            Theme.of(context).colorScheme.surface,
          ], // Gradie
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(Insets.gutter / 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            const SizedBox(height: 32),
            SizedBox(
              height: widget.height,
              child: _BarChart(
                widget.facet,
                Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
