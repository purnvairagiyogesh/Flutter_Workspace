import 'dart:io';

void main() {
  print("Enter Any Number : ");
  var num = int.parse(stdin.readLineSync().toString());
  var reverse = "";


  while(num > 0)
  {
    var rem = num%10;

    reverse+=rem.toString();

    num = num~/10;

  }

  print(reverse);
}