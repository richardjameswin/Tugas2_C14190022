import 'dart:io';
void main(List<String> arguments) {
  int number2 = 1;
  stdout.write("I Number: ");
  String? number = stdin.readLineSync();
  number2 = int.parse(number!);

  if(number2 % 2 == 0){
    int n1 = 1;
    int n2 = number2;
    for (int i = 0; i < number2; i++) {
      for (int j = 0; j < number2 - i; j++) {
        if (n1 % 9 != 0) {
          stdout.write(n1 % 9);
        } else {         
          stdout.write("9");
        }
        n1++;
        if (n1 > number2) {
          n1 = 1;
        }
      }
      for (int j = 0; j < i * 2; j++) {
        stdout.write(" ");
      }
      for (int j = 0; j < number2 - i; j++) {
        if (n2 % 9 != 0) {
          stdout.write(n2 % 9);
        } else {
          stdout.write("9");
        }
        n2--;
        if (n2 < 1) {
          n2 = number2;
        }
      }
      print("");
    }
  }
  else {
    int c1 = (number2 / 2).floor();
    int c2 = 1;
    for (int i = 0; i < number2; i++) {
      for (int j = 0; j < c1; j++) {
        stdout.write("*");
      }
      for (int j = 0; j < c2; j++) {
        if (j % 2 != 0) {
          stdout.write(" ");
        } else {
          if (i + 1 != 9) {
            stdout.write((i + 1) % 9);
          } else {
            stdout.write("9");
          }
        }
      }
      for (int j = 0; j < c1; j++) {
        stdout.write("*");
      }
      if (i < (number2 / 2).floor()) {
        c1--;
        c2 += 2;
      } else {
        c1++;
        c2 -= 2;
      }
      print("");
    }
  }
}