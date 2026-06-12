import 'dart:io';

getDeliveryCharge (var amount)
{
  if(amount < 200)
    {
      print("Your Delivery Charge is 50!");
    }
  else if(amount >= 200 && amount <= 500)
    {
      print("Your Delivery Charge is 20!");
    }
  else
    {
      print("Delivery is Free!");
    }
}

void main()
{
  print("Enter the order amount : ");
  var orderamount = int.parse(stdin.readLineSync().toString());
  getDeliveryCharge (orderamount);
}