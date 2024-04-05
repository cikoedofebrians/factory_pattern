import 'money.dart';

class Dollar extends Money {
  Dollar({required super.totalMoney});

  @override
  int totalMoneyInIdr() {
    return totalMoney * 150000;
  }
}
