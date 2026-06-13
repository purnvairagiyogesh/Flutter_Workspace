import 'dart:io';

formatFollowers  (var num) => num < 1000 ? print("Your Formatted Followers are ${num}") : num >= 1000 && num < 1000000 ? print("Your Formatted Followers are ${num/1000}K") : num >= 1000000 ? print("Your Formatted Followers are ${num/1000000}M") : num.toString();



void main()
{

  print("Enter Your You-Tube followers : ");
  var fol = int.parse(stdin.readLineSync().toString());

  formatFollowers(fol);


}