import 'package:ruhaniapp/main.dart';

class TickTock{
  const TickTock();
  Stream<int> tick({required int initialTickCount}){
    return Stream.periodic(
        const Duration(milliseconds: 100), (x){
      return initialTickCount - x - 1;
    });
  }
}