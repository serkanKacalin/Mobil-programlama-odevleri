import 'dart:io';

void main() {
  while (true) {
    print("""İşlem Tipini Seçiniz: 
        1-Toplama
        2-Cikarma
        3-Çarpma
        4-Bölme
        5-Cikiş""");

    int? secim = int.parse(stdin.readLineSync()!);
    if (secim < 1 || secim > 5) {
      print("Lütfen Geçerli Bir İşlem Seçiniz: ");
      continue;
    }
    if (secim == 5) {
      print("Cikis yaptiniz.");
      break;
    }

    print("Lütfen Parametreleri Giriniz: ");
    double? param1 = double.parse(stdin.readLineSync()!);
    double? param2 = double.parse(stdin.readLineSync()!);

    switch (secim) {
      case 1:
        print("Sonuç: ");
        print(Toplama(param1, param2));
        break;
      case 2:
        print("Sonuç: ");
        Cikarma(param2: param2, param1: param1);
        break;
      case 3:
        print("Sonuç: ");
        print(Carpma(param1, param2, "Sonuç"));
        break;
      case 4:
        print("Sonuç: ");
        print(Bolme(param1, param2));
        break;
    }
  }
}

double Toplama(double param1, double param2) {
  // sıralı parametre kullanımı
  return param1 + param2;
}

Null Cikarma({required double param1, required double param2}) {
  // required parametre kullanımı
  double sonuc = param1 - param2;
  print("Sonuç : $sonuc");
}

Null Carpma(double param1, double param2, [String? title]) {
  // Opsiyonel parametre kullanımı
  double sonuc = param1 * param2;
  print("$title = $sonuc");
}

double Bolme(double param1, double param2) => param1 / param2;
