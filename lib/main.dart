import 'dart:ui';

import 'package:candlestick_chart/candlestick_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/presentations/screens/home_screen.dart';
import 'features/theme/apptheme.dart';

void main() async{
 final window = WidgetsFlutterBinding.ensureInitialized().window;
 await _ensureScreenSize(window);
  runApp(const MyApp());


}
Future<void> _ensureScreenSize(FlutterView window) async {
  return window.physicalSize.isEmpty ? Future.delayed(const Duration(milliseconds: 10), () => _ensureScreenSize(window)) : Future.value();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 559),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      ensureScreenSize: true,
      enableScaleText: () {
      return  false;
      },

      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme:AppTheme.darkTheme,
        home: const HomeScreen(),
      ),

    );
  }
}

class TradingChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Timeframe Selection Buttons
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: ['1H', '2H', '4H', '1D', '1W', ]
                  .map((time) =>
                  TextButton(
                    onPressed: () {},
                    child: Text(time),
                  ))
                  .toList(),
            ),
          ),

          // Candlestick Chart
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CandlestickChart(candles: [
                CandleData(timestamp: 4, open: 200, close: 20, volume: 3000),
                CandleData(timestamp: 5, open: 100, close: 40, volume: 5000),
                CandleData(timestamp: 6, open: 250, close: 50, volume: 6000),
                CandleData(timestamp: 7, open: 100, close: 100, volume: 7000),
              ],),
            ),
          ),

          // Bottom Navigation Tabs
          Container(
            color: Colors.grey.shade200,
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(label: 'Open Orders'),
                TabButton(label: 'Positions'),
                TabButton(label: 'Order History'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String label;

  const TabButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
