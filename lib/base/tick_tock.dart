import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/injector/injection.dart';

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    final _logger = locator<LoggerUtils>();
    final _TAG = "Ticker";
    return Stream.periodic(
        const Duration(milliseconds: 10), (int x){
      int value = ticks + (x + 1);
      //_logger.log(_TAG, "Ticks $value");
      return value;
    }
    ).take(1000);
  }
}