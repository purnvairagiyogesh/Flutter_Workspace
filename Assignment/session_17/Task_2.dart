import 'dart:io';

calculateDiscountedPrice (var price, var dis)
{
  var final_price = price - (price * dis / 100);

  return final_price;

}

void main()
{
  print("Enter The Price of Product :");
  var price = int.parse(stdin.readLineSync().toString());

  var dis = 20;

  var final_price = calculateDiscountedPrice (price, dis);

  print(" The price of product : $price \n The Discount on Product : ${dis}% \n The Final Price of Product : $final_price");

}