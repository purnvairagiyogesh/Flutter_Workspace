import 'dart:io';
import 'dart:vmservice_io';

checkDiscountEligibility(var amount)
{
  var eligible= "You are eligible for a discount!";
  var noteligible = "No discount available!";
  var bool;
  if (amount >= 500)
    {
      bool = true;
      print("your amount is enough for discount : $bool");
      print("$eligible");
    }
  else
    {
      bool = false;
      print("your amount is enough for discount : $bool");
      print("$noteligible");
    }
}
void main()
{
  print("Enter the total amount for order : ");
  var amount = int.parse(stdin.readLineSync().toString());

  checkDiscountEligibility(amount);


}