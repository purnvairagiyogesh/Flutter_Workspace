import 'dart:io';
void main()
{

  String name = 'Delhi Express';
  double rating = 4.5;
  String cuisine = 'North Indian';

  Map restaurant = {"Name":"$name", "Rating" : "$rating", "Cuisine":"$cuisine"};
  print("${restaurant}");

}