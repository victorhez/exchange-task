import 'package:intl/intl.dart';

class CandleData {
  final String formattedDate;
  final double open;
  final double high;
  final double low;
  final double close;
  final int volume;

  CandleData({
    required int timestamp,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.volume,
  }) : formattedDate = DateFormat('MM/dd/yyyy')
            .format(DateTime.fromMicrosecondsSinceEpoch(timestamp));
}
