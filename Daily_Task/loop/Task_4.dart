import 'dart:io';

void main() {
  print("Enter Name or sentence : ");
  var n = stdin.readLineSync().toString();
  String reverse = "";

  for(int i = n.length-1; i>=0; i--)
  {
    reverse+=n[i];
  }

  print(reverse);
}
