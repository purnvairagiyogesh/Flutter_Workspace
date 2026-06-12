import 'dart:io';


void main()
{
  print("Enter your name : ");
  var name = stdin.readLineSync().toString();

  print("Enter the total number of items : ");
  var total = int.parse(stdin.readLineSync().toString());

  print("Hi $name! Your cart has $total items!");


}