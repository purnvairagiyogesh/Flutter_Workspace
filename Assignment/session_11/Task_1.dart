import 'dart:io';

checkDiscountEligibility(var age)
{
  if(age < 22)
    {
      print("Eligible for Student Discount!");
    }
  else
    {
      print("No Discount Available!");
    }
}

void main()
{
  print("Enter Student's Age : ");
  var age = int.parse(stdin.readLineSync().toString());
  checkDiscountEligibility(age);
}