import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';
import 'package:todo_list/constants/custom_Button.dart';
import 'package:todo_list/constants/nav_bar.dart';
import 'package:todo_list/focus_mode/applications.dart';
import 'package:todo_list/focus_mode/circular_timer.dart';
import 'package:todo_list/focus_mode/overview.dart';
import 'package:todo_list/home/add_task.dart';

class FocusMode extends StatefulWidget {
  const FocusMode({super.key});

  @override
  State<FocusMode> createState() => _FocusModeState();
}

class _FocusModeState extends State<FocusMode> {
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
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Focus Mode',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: CircularTimer(duration: 1800),
              ),
              Text(
                "While your focus mode is on, all of your notifications will be off",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 20),
              CustomButton(height: 48, width: 177, text: "Start Focusing", onPressed: () {}),
              SizedBox(height: 20),
              Overview(),
              SizedBox(height: 20),
              Applications(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddTask()),
            );
          },
          child: Icon(
            Icons.add,
            size: 40,
            color: Colors.white,
          ),
          backgroundColor: secondaryColor,
          shape: CircleBorder(),
          elevation: 10,
        ),
      ),
    );
  }
}
