import 'dart:math';

import 'package:candlestick_chart/candlestick_chart.dart';
import 'package:exchange/features/presentations/screens/orderbooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ChartsTab extends StatefulWidget {
  const ChartsTab({super.key});

  @override
  State<ChartsTab> createState() => _ChartsTabState();
}

class _ChartsTabState extends State<ChartsTab> {
  //
  // typedef TimeLabelGetter = String Function(int timestamp);

  String formatTimestamp(double timestamp) {
    return DateFormat('MM/dd/yyyy').format(
      DateTime.fromMicrosecondsSinceEpoch(timestamp.toInt()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSurface,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Time",
                style: TextStyle(color: Theme.of(context).colorScheme.background),
              ),
              12.horizontalSpace,
              Text(
                "1H",
                style: TextStyle(color: Theme.of(context).colorScheme.background),

              ),
              12.horizontalSpace,
              Text(
                "2H",
                style: TextStyle(color: Theme.of(context).colorScheme.background),

              ),
              12.horizontalSpace,
              Text(
                "4H",
                style: TextStyle(color: Theme.of(context).colorScheme.background),

              ),
              12.horizontalSpace,
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  child: Text(
                    "1D",
                    style: TextStyle(color: Theme.of(context).colorScheme.background),

                  )),
              12.horizontalSpace,
              Text(
                "1W",
                style: TextStyle(color: Theme.of(context).colorScheme.background),

              ),
              12.horizontalSpace,
              Text(
                "1M",
                style: TextStyle(color: Theme.of(context).colorScheme.background),

              ),
              12.horizontalSpace,
              Icon(
                Icons.keyboard_arrow_down,
                color:Theme.of(context).colorScheme.background,
                size: 17,
              ),
              12.horizontalSpace,
              SizedBox(height: 25, child: VerticalDivider(
                color:Theme.of(context).colorScheme.background,


              )),
              12.horizontalSpace,
              Icon(
                Icons.candlestick_chart_outlined,
                color:Theme.of(context).colorScheme.background,

              ),
              12.horizontalSpace,
              Text(
                "Fx",
                style: TextStyle(
                    color:Theme.of(context).colorScheme.background,
                    fontSize: 18,fontWeight: FontWeight.w600),
              ),
            ],
          ),
          10.verticalSpace,

          // SizedBox(h)
          Divider(
            color: Colors.grey.withOpacity(
              0.2,
            ),
            thickness: 1,
          ),
          10.verticalSpace,

          Row(
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(0.2)),
                  child: Text(
                    "Trading view",
                    style: TextStyle(color: Theme.of(context).colorScheme.background),
                  )),
              10.horizontalSpace,
              Text(
                "Depth",
                style: TextStyle(color: Theme.of(context).colorScheme.background),

              ),
              10.horizontalSpace,
              Icon(
                Icons.compare_arrows_outlined,
                color: Theme.of(context).colorScheme.background,
              )
            ],
          ),
          10.verticalSpace,
          Divider(
            color: Colors.grey.withOpacity(
              0.2,
            ),
            thickness: 1,
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 15,
                      color: Colors.grey,
                    )),
                5.horizontalSpace,
                const Text(
                  "BTC/USD",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                10.horizontalSpace,
                const Icon(
                  Icons.circle_outlined,
                  size: 16,
                  color: Colors.grey,
                ),
                const Text(
                  "36,641.54",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w500),
                ),
                10.horizontalSpace,
                const Text(
                  "H",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                2.horizontalSpace,
                const Text(
                  "36,641.54",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w500),
                ),
                10.horizontalSpace,
                const Text(
                  "L",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                ),
                2.horizontalSpace,
                const Text(
                  "36,641.54",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w500),
                ),
                0.horizontalSpace,
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: 100,
                  child: Row(
                    children: [
                      const Text(
                        "Vol(BTC):",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                      5.horizontalSpace,
                      const Text(
                        "65.254K",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w500),
                      ),
                      10.horizontalSpace,
                      const Text(
                        "Vol(USDT):",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                      5.horizontalSpace,
                      const Text(
                        "2.418B",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                CandlestickChart(
                  currentPrice: 9000,
                  currentVolume: 1000,
                  enableGridLines: false,
                  // timeLabel:  formatTimestamp,
                  volumeLabel: null,
                  style: const ChartStyle(
                    priceGainColor: Colors.green,
                    volumeGainColor: Colors.green,
                    volumeGridLineColor: Colors.transparent,
                    volumeLossColor: Colors.red,
                    volumeLabelStyle: TextStyle(
                      color: Colors.transparent,
                    ),
                    priceGridLineColor: Colors.green,
                  ),
                  candles: CandleDataGenerator().generateData(72),
                )



                // SfCartesianChart(),

              ],
            ),
          )
        ],
      ),
    );
  }
}




class CandleDataGenerator {
  final Random _random = Random();

  List<CandleData> generateData(int count) {
    List<CandleData> data = [];
    double currentPrice = 10000; // starting price
    int timestamp = DateTime.now().millisecondsSinceEpoch;

    for (int i = 0; i < count; i++) {
      double open = currentPrice;
      double close = open + _random.nextDouble() * 1000 * (_random.nextBool() ? -1 : 1);
      double high = max(open, close) + _random.nextDouble() * 200;
      double low = min(open, close) - _random.nextDouble() * 200;
      double volume = _random.nextDouble() * 10 + 1;

      data.add(CandleData(
        timestamp: timestamp,
        open: open,
        close: close,
        high: high,
        low: low,
        volume: volume,
      ));

      currentPrice = close; // Set up next candle's opening price
      timestamp -= 3600000; // Simulating hourly data, decrease timestamp by one hour
    }

    return data;
  }
}
