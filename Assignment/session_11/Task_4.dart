import 'dart:io';

showRoleFeatures(var role)
{
  switch(role)
      {
    case "admin":
    case "Admin":
      print("As an Admin you have access to all features!");

    case "Seller":
    case "seller":
      print("As a Seller you have access to add products!");

    case "buyer":
    case "Buyer":
      print("As a Buyer you can browse and purchase the products!");

    default:
      print("The role not found!");
  }
}

void main()
{
  print("Enter Your Role : ");
  var role = stdin.readLineSync().toString();

  showRoleFeatures(role);
}