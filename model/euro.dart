import 'money.dart';

class Euro extends Money {
  Euro({required super.totalMoney});

  @override
  int totalMoneyInIdr() {
    return totalMoney * 170000;
  }
}
