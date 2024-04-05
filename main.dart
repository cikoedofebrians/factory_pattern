import 'model/money.dart';

void main() {
  // Membuat kelas Dollar dari factory method milik Money dengan memasukan enumeration yang sesuai
  final dollarMoney = Money.fromCurrency(10, Currency.USD);
  print('Total money in IDR: ${dollarMoney.totalMoneyInIdr()}');

  /// HASIL
  /// Total money in IDR: 1500000

  // Membuat kelas Euro dari factory method milik Money dengan memasukan enumeration yang sesuai
  final euroMoney = Money.fromCurrency(10, Currency.EUR);
  print('Total money in IDR: ${euroMoney.totalMoneyInIdr()}');

  /// HASIL
  /// Total money in IDR: 1700000

  /// Membuat kelas Pound dari factory method milik Money dengan memasukan enumeration yang sesuai
  final poundMoney = Money.fromCurrency(10, Currency.GBP);
  print('Total money in IDR: ${poundMoney.totalMoneyInIdr()}');

  /// HASIL
  /// Total money in IDR: 2000000
}
