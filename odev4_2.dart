import 'dart:async';
import 'dart:io';

Future<void> main() async {
  List<int> dizi = diziOlustur();

  List<int> yeniDizi = await yeniDiziOlustur(dizi);

  print("Eski Dizi: $dizi");
  print("Yeni Dizi: $yeniDizi");
}

Future<List<int>> yeniDiziOlustur(List<int> list) async {
  List<int> yeniDizi = [];

  await Future.forEach(list, (int element) async {
    int yeniEleman = await ikiyeCarp(element);
    yeniDizi.add(yeniEleman);
  });

  return yeniDizi;
}

Future<int> ikiyeCarp(int number) {
  return Future.delayed(Duration(seconds: 0), () => number * 2);
}

List<int> diziOlustur() {
  print("Lütfen dizi boyutunu belirleyin : ");
  int diziBoyutu = int.parse(stdin.readLineSync()!);
  List<int> dizi = [];

  for (int i = 0; i < diziBoyutu; i++) {
    int inputs = int.parse(stdin.readLineSync()!);
    dizi.add(inputs);
  }

  return dizi;
}
