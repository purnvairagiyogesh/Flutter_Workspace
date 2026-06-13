import 'dart:io';

addServiceCharge   (var num)
{
  num = num + (num * 5 / 100);
  print("Your Totla Price after the Delivery charge is $num");
}

void main()
{
  addServiceCharge (400);
  addServiceCharge (500);
  addServiceCharge (700);


}