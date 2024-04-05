import 'money.dart';

class Pound extends Money {
  Pound({required super.totalMoney});

  @override
  int totalMoneyInIdr() {
    return totalMoney * 200000;
  }
}
