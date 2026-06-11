import 'dart:io';

void main() {
  print("Enter Any Number : ");
  var num = int.parse(stdin.readLineSync().toString());

  int lowest = 9;

  while(num > 0)
  {
    var rem = num%10;

    if(rem < lowest)
    {
       lowest=rem;
    }

    num = num~/10;

  }

  print(lowest);
}