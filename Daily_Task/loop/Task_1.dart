import 'dart:io';

void main() {
  print("Enter Any Number : ");
  var num = int.parse(stdin.readLineSync().toString());

  int biggest = 0;

  while(num > 0)
  {
    var rem = num%10;

    if(rem > biggest)
    {
       biggest=rem;
    }

    num = num~/10;

  }

  print(biggest);
}