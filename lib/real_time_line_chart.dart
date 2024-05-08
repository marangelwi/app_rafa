/// Dart imports
import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';

/// Package imports
import 'package:flutter/material.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

/// Local imports
import 'package:flutter_application/sample_view.dart';

/// Renders the realtime line chart sample.
class LiveLineChart extends StatefulWidget {
  /// Creates the realtime line chart sample.
  const LiveLineChart(this.times,{super.key});

  final String times;

  @override
  _LiveLineChartState createState() => _LiveLineChartState();
}

/// State class of the realtime line chart.
class _LiveLineChartState extends State<LiveLineChart> {
  _LiveLineChartState() {
    timer =
        Timer.periodic(const Duration(milliseconds: 8), _updateDataSource);
  }

  Timer? timer;
  List<_ChartData>? chartData;
  late int count;
  ChartSeriesController<_ChartData, int>? _chartSeriesController;

  @override
  void dispose() {
    timer?.cancel();
    chartData!.clear();
    _chartSeriesController = null;
    super.dispose();
  }

  @override
  void initState() {
    count = 299;
    chartData = <_ChartData>[
      _ChartData(0, 0),
      _ChartData(1, 0),
      _ChartData(2, 0),
      _ChartData(3, 0),
      _ChartData(4, 0),
      _ChartData(5, 0),
      _ChartData(6, 0),
      _ChartData(7, 0),
      _ChartData(8, 0),
      _ChartData(9, 0),
      _ChartData(10, 0),
      _ChartData(11, 0),
      _ChartData(12, 0),
      _ChartData(13, 0),
      _ChartData(14, 0),
      _ChartData(15, 0),
      _ChartData(16, 0),
      _ChartData(17, 0),
      _ChartData(18, 0),
      _ChartData(19, 0),
      _ChartData(20, 0),
      _ChartData(21, 0),
      _ChartData(22, 0),
      _ChartData(23, 0),
      _ChartData(24, 0),
      _ChartData(25, 0),
      _ChartData(26, 0),
      _ChartData(27, 0),
      _ChartData(28, 0),
      _ChartData(29, 0),
      _ChartData(30, 0),
      _ChartData(31, 0),
      _ChartData(32, 0),
      _ChartData(33, 0),
      _ChartData(34, 0),
      _ChartData(35, 0),
      _ChartData(36, 0),
      _ChartData(37, 0),
      _ChartData(38, 0),
      _ChartData(39, 0),
      _ChartData(40, 0),
      _ChartData(41, 0),
      _ChartData(42, 0),
      _ChartData(43, 0),
      _ChartData(44, 0),
      _ChartData(45, 0),
      _ChartData(46, 0),
      _ChartData(47, 0),
      _ChartData(48, 0),
      _ChartData(49, 0),
      _ChartData(50, 0),
      _ChartData(51, 0),
      _ChartData(52, 0),
      _ChartData(53, 0),
      _ChartData(54, 0),
      _ChartData(55, 0),
      _ChartData(56, 0),
      _ChartData(57, 0),
      _ChartData(58, 0),
      _ChartData(59, 0),
      _ChartData(60, 0),
      _ChartData(61, 0),
      _ChartData(62, 0),
      _ChartData(63, 0),
      _ChartData(64, 0),
      _ChartData(65, 0),
      _ChartData(66, 0),
      _ChartData(67, 0),
      _ChartData(68, 0),
      _ChartData(69, 0),
      _ChartData(70, 0),
      _ChartData(71, 0),
      _ChartData(72, 0),
      _ChartData(73, 0),
      _ChartData(74, 0),
      _ChartData(75, 0),
      _ChartData(76, 0),
      _ChartData(77, 0),
      _ChartData(78, 0),
      _ChartData(79, 0),
      _ChartData(80, 0),
      _ChartData(81, 0),
      _ChartData(82, 0),
      _ChartData(83, 0),
      _ChartData(84, 0),
      _ChartData(85, 0),
      _ChartData(86, 0),
      _ChartData(87, 0),
      _ChartData(88, 0),
      _ChartData(89, 0),
      _ChartData(90, 0),
      _ChartData(91, 0),
      _ChartData(92, 0),
      _ChartData(93, 0),
      _ChartData(94, 0),
      _ChartData(95, 0),
      _ChartData(96, 0),
      _ChartData(97, 0),
      _ChartData(98, 0),
      _ChartData(99, 0),
      _ChartData(100, 0),
      _ChartData(101, 0),
      _ChartData(102, 0),
      _ChartData(103, 0),
      _ChartData(104, 0),
      _ChartData(105, 0),
      _ChartData(106, 0),
      _ChartData(107, 0),
      _ChartData(108, 0),
      _ChartData(109, 0),
      _ChartData(110, 0),
      _ChartData(111, 0),
      _ChartData(112, 0),
      _ChartData(113, 0),
      _ChartData(114, 0),
      _ChartData(115, 0),
      _ChartData(116, 0),
      _ChartData(117, 0),
      _ChartData(118, 0),
      _ChartData(119, 0),
      _ChartData(120, 0),
      _ChartData(121, 0),
      _ChartData(122, 0),
      _ChartData(123, 0),
      _ChartData(124, 0),
      _ChartData(125, 0),
      _ChartData(126, 0),
      _ChartData(127, 0),
      _ChartData(128, 0),
      _ChartData(129, 0),
      _ChartData(130, 0),
      _ChartData(131, 0),
      _ChartData(132, 0),
      _ChartData(133, 0),
      _ChartData(134, 0),
      _ChartData(135, 0),
      _ChartData(136, 0),
      _ChartData(137, 0),
      _ChartData(138, 0),
      _ChartData(139, 0),
      _ChartData(140, 0),
      _ChartData(141, 0),
      _ChartData(142, 0),
      _ChartData(143, 0),
      _ChartData(144, 0),
      _ChartData(145, 0),
      _ChartData(146, 0),
      _ChartData(147, 0),
      _ChartData(148, 0),
      _ChartData(149, 0),
      _ChartData(150, 0),
      _ChartData(151, 0),
      _ChartData(152, 0),
      _ChartData(153, 0),
      _ChartData(154, 0),
      _ChartData(155, 0),
      _ChartData(156, 0),
      _ChartData(157, 0),
      _ChartData(158, 0),
      _ChartData(159, 0),
      _ChartData(160, 0),
      _ChartData(161, 0),
      _ChartData(162, 0),
      _ChartData(163, 0),
      _ChartData(164, 0),
      _ChartData(165, 0),
      _ChartData(166, 0),
      _ChartData(167, 0),
      _ChartData(168, 0),
      _ChartData(169, 0),
      _ChartData(170, 0),
      _ChartData(171, 0),
      _ChartData(172, 0),
      _ChartData(173, 0),
      _ChartData(174, 0),
      _ChartData(175, 0),
      _ChartData(176, 0),
      _ChartData(177, 0),
      _ChartData(178, 0),
      _ChartData(179, 0),
      _ChartData(180, 0),
      _ChartData(181, 0),
      _ChartData(182, 0),
      _ChartData(183, 0),
      _ChartData(184, 0),
      _ChartData(185, 0),
      _ChartData(186, 0),
      _ChartData(187, 0),
      _ChartData(188, 0),
      _ChartData(189, 0),
      _ChartData(190, 0),
      _ChartData(191, 0),
      _ChartData(192, 0),
      _ChartData(193, 0),
      _ChartData(194, 0),
      _ChartData(195, 0),
      _ChartData(196, 0),
      _ChartData(197, 0),
      _ChartData(198, 0),
      _ChartData(199, 0),
      _ChartData(200, 0),
      _ChartData(201, 0),
      _ChartData(202, 0),
      _ChartData(203, 0),
      _ChartData(204, 0),
      _ChartData(205, 0),
      _ChartData(206, 0),
      _ChartData(207, 0),
      _ChartData(208, 0),
      _ChartData(209, 0),
      _ChartData(210, 0),
      _ChartData(211, 0),
      _ChartData(212, 0),
      _ChartData(213, 0),
      _ChartData(214, 0),
      _ChartData(215, 0),
      _ChartData(216, 0),
      _ChartData(217, 0),
      _ChartData(218, 0),
      _ChartData(219, 0),
      _ChartData(220, 0),
      _ChartData(221, 0),
      _ChartData(222, 0),
      _ChartData(223, 0),
      _ChartData(224, 0),
      _ChartData(225, 0),
      _ChartData(226, 0),
      _ChartData(227, 0),
      _ChartData(228, 0),
      _ChartData(229, 0),
      _ChartData(230, 0),
      _ChartData(231, 0),
      _ChartData(232, 0),
      _ChartData(233, 0),
      _ChartData(234, 0),
      _ChartData(235, 0),
      _ChartData(236, 0),
      _ChartData(237, 0),
      _ChartData(238, 0),
      _ChartData(239, 0),
      _ChartData(240, 0),
      _ChartData(241, 0),
      _ChartData(242, 0),
      _ChartData(243, 0),
      _ChartData(244, 0),
      _ChartData(245, 0),
      _ChartData(246, 0),
      _ChartData(247, 0),
      _ChartData(248, 0),
      _ChartData(249, 0),
      _ChartData(250, 0),
      _ChartData(251, 0),
      _ChartData(252, 0),
      _ChartData(253, 0),
      _ChartData(254, 0),
      _ChartData(255, 0),
      _ChartData(256, 0),
      _ChartData(257, 0),
      _ChartData(258, 0),
      _ChartData(259, 0),
      _ChartData(260, 0),
      _ChartData(261, 0),
      _ChartData(262, 0),
      _ChartData(263, 0),
      _ChartData(264, 0),
      _ChartData(265, 0),
      _ChartData(266, 0),
      _ChartData(267, 0),
      _ChartData(268, 0),
      _ChartData(269, 0),
      _ChartData(270, 0),
      _ChartData(271, 0),
      _ChartData(272, 0),
      _ChartData(273, 0),
      _ChartData(274, 0),
      _ChartData(275, 0),
      _ChartData(276, 0),
      _ChartData(277, 0),
      _ChartData(278, 0),
      _ChartData(279, 0),
      _ChartData(280, 0),
      _ChartData(281, 0),
      _ChartData(282, 0),
      _ChartData(283, 0),
      _ChartData(284, 0),
      _ChartData(285, 0),
      _ChartData(286, 0),
      _ChartData(287, 0),
      _ChartData(288, 0),
      _ChartData(289, 0),
      _ChartData(290, 0),
      _ChartData(291, 0),
      _ChartData(292, 0),
      _ChartData(293, 0),
      _ChartData(294, 0),
      _ChartData(295, 0),
      _ChartData(296, 0),
      _ChartData(297, 0),
      _ChartData(298, 0),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildLiveLineChart();
  }

  /// Returns the realtime Cartesian line chart.
  SfCartesianChart _buildLiveLineChart() {
    return SfCartesianChart(
        plotAreaBorderWidth: 0,
        primaryXAxis:
            const NumericAxis(majorGridLines: MajorGridLines(width: 0)),
        primaryYAxis: const NumericAxis(
            axisLine: AxisLine(width: 0),
            majorTickLines: MajorTickLines(size: 0)),
        series: <CartesianSeries>[
          FastLineSeries<_ChartData, int>(
            onRendererCreated:
                (ChartSeriesController<_ChartData, int> controller) {
              _chartSeriesController = controller;
            },
            dataSource: chartData,
            color: Color.fromARGB(255, 14, 122, 205),
            xValueMapper: (_ChartData sales, _) => sales.country,
            yValueMapper: (_ChartData sales, _) => sales.sales,
            animationDuration: 0,
          )
        ]);
  }

  ///Continuously updating the data source based on timer
  void _updateDataSource(Timer timer) {
    // debugPrint(int.parse(widget.times).toString());
    // if (isCardView != null) {
      // chartData!.add(_ChartData(count, _getRandomInt(10, 100)));
      chartData!.add(_ChartData(count, int.parse(widget.times) > 10 ? int.parse(widget.times) : 0));
      if (chartData!.length == 300) {
        chartData!.removeAt(0);
        _chartSeriesController?.updateDataSource(
          addedDataIndexes: <int>[chartData!.length - 1],
          removedDataIndexes: <int>[0],
        );
      } else {
        _chartSeriesController?.updateDataSource(
          addedDataIndexes: <int>[chartData!.length - 1],
        );
      }
      count = count + 1;
    // }
  }

  ///Get the random data
  int _getRandomInt(int min, int max) {
    final math.Random random = math.Random();
    return min + random.nextInt(max - min);
  }
}

/// Private class for storing the chart series data points.
class _ChartData {
  _ChartData(this.country, this.sales);
  final int country;
  final num sales;
}