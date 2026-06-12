import 'dart:io';

checkDiscountEligibility(var amount)
{
  var dis;
  if (amount > 1000)
    {
      dis = amount * 10 / 100;
      amount = amount - dis;
      print("Discount(10%) : $dis");
      print("the total price after discount of 10% : ${amount}");
    }
  else
    {
      print("No Discount available(total has to be above 1000 for dis.)!");
    }
}
void main()
{
  print("Enter the 1st product price : ");
  var product1 = int.parse(stdin.readLineSync().toString());

  print("Enter the 1st product price : ");
  var product2 = int.parse(stdin.readLineSync().toString());

  print("Enter the 1st product price : ");
  var product3 = int.parse(stdin.readLineSync().toString());

  var total = product1 + product2+ product3;
  print("Total : $total");

  checkDiscountEligibility(total);


}