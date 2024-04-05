import 'euro.dart';
import 'pound.dart';
import 'usd.dart';

abstract class Money {
  final int totalMoney;

  Money({
    required this.totalMoney,
  });

  // Fungsi untuk menghitung nilai mata uang jika di konversi ke IDR
  int totalMoneyInIdr();

  // Factory method ini mengkapsulasi logika untuk membuat objek dari kelas-kelas konkret.
  factory Money.fromCurrency(int totalMoney, Currency currency) {
    if (currency.isUSD) {
      return Dollar(totalMoney: totalMoney);
    } else if (currency.isEUR) {
      return Euro(totalMoney: totalMoney);
    } else if (currency.isGBP) {
      return Pound(totalMoney: totalMoney);
    } else {
      throw UnimplementedError();
    }
  }
}

// Enumerasi untuk mata uang
enum Currency {
  USD,
  EUR,
  GBP,
}

// Ekstensi untuk memudahkan melakukan perbandingan
extension CurrencyExt on Currency {
  bool get isUSD => this == Currency.USD;
  bool get isEUR => this == Currency.EUR;
  bool get isGBP => this == Currency.GBP;

  String get capitalizedValue => this.toString().toUpperCase();
}
