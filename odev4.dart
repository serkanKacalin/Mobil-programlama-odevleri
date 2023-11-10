import 'dart:io';

void main() {
  int? number = int.parse(stdin.readLineSync()!);
  int? number2 = int.parse(stdin.readLineSync()!);

  Future.delayed(Duration(seconds: 3),
      () => print('Sum of the two numbers : ${number + number2}'));
}
