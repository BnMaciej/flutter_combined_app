import 'package:flutter_modular/flutter_modular.dart';

import '../../app/app_route_paths.dart';
import '../charts/charts_screen.dart';
import 'plots/bar_chart_plot.dart';
import 'plots/line_chart_plot.dart';
import 'plots/pie_chart_plot.dart';
import 'plots/scatter_chart_plot.dart';

class ChartsModule extends Module {
  @override
  void routes(r) {
    r.child(
      AppRoutePaths.startPath,
      child: (context) => const ChartsScreen(),
      transition: TransitionType.noTransition,
    );
    r.child(
      LineChartPlot.route,
      child: (_) => const LineChartPlot(),
    );
    r.child(
      BarChartPlot.route,
      child: (_) => const BarChartPlot(),
    );
    r.child(
      PieChartPlot.route,
      child: (_) => const PieChartPlot(),
    );
    r.child(
      ScatterChartPlot.route,
      child: (_) => const ScatterChartPlot(),
    );

    super.routes(r);
  }
}