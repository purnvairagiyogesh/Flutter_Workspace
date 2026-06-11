import 'dart:io';

void main() {
  print("Enter Any Number : ");
  var num = stdin.readLineSync().toString();
  String reverse = "";

  for(int i = num.length-1; i>=0; i--)
  {
    reverse+=num[i];
  }

  print(reverse);
}