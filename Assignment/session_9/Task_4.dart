import 'dart:io';

class UserProfile
{
  String name = "";
  int age = 0;
  String email = "";
}

void main()
{
  UserProfile obj1 = UserProfile();

  obj1.name="Yogesh";
  obj1.age=21;
  obj1.email = "y@gmail.com";

  print("Your name is  ${obj1.name}");
  print("Your age is  ${obj1.age}");
  print("Your email is  ${obj1.email}");

}