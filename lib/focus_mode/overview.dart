import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  String selectedTimeRange = 'This Week';

  // Example data for different time ranges
  final Map<String, List<BarChartGroupData>> chartData = {
    'This Week': [
      BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 3.5, color: Colors.grey)]),
      BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 3, color: Colors.grey)]),
      BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 5, color: Colors.grey)]),
      BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 2, color: Colors.grey)]),
      BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 4, color: Colors.grey)]),
      BarChartGroupData(x: 5, barRods: [BarChartRodData(toY: 4.5, color: Color(0xff8687E7))]),
      BarChartGroupData(x: 6, barRods: [BarChartRodData(toY: 2, color: Colors.grey)]),
    ],
    'Last Week': [
      BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 4.5, color: Colors.blue)]),
      BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 2.5, color: Colors.blue)]),
      // Add more data for last week...
    ],
    'This Month': [
      BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 5.0, color: Colors.green)]),
      BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 6.0, color: Colors.green)]),
      // Add more data for this month...
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Overview',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        DropdownButton<String>(
                          value: selectedTimeRange,
                          icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                          dropdownColor: Colors.black,
                          underline: SizedBox(),
                          items: <String>['This Week', 'Last Week', 'This Month'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedTimeRange = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    Container(
                      height: 200, // Fixed height for the chart container
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: primaryColor, // Background color of the container
                        borderRadius: BorderRadius.circular(12.0), // Rounded corners
                        
                      ),
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.spaceAround,
                          maxY: 6,
                          barTouchData: BarTouchData(enabled: false),
                          titlesData: FlTitlesData(
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  return Text(
                                    value.toString(),
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                  );
                                },
                                interval: 1,
                                reservedSize: 25,
                              ),
                            ),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  switch (value.toInt()) {
                                    case 0:
                                      return Text('SUN', style: TextStyle(color: Colors.grey, fontSize: 12));
                                    case 1:
                                      return Text('MON', style: TextStyle(color: Colors.grey, fontSize: 12));
                                    case 2:
                                      return Text('TUE', style: TextStyle(color: Colors.grey, fontSize: 12));
                                    case 3:
                                      return Text('WED', style: TextStyle(color: Colors.grey, fontSize: 12));
                                    case 4:
                                      return Text('THU', style: TextStyle(color: Colors.grey, fontSize: 12));
                                    case 5:
                                      return Text('FRI', style: TextStyle(color: Colors.grey, fontSize: 12));
                                    case 6:
                                      return Text('SAT', style: TextStyle(color: Colors.grey, fontSize: 12));
                                    default:
                                      return Text('');
                                  }
                                },
                              ),
                            ),
                          ),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          barGroups: chartData[selectedTimeRange] ?? [],
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}
