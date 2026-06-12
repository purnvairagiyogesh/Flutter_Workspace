import 'dart:io';

class UserProfile
{
  // the string data type is used because the name for
  // username can contain both characters and numbers in it
  String name = "";

  // the integer data type is used in age is because
  // the age can not be decimal and can not be discribed the words
  int age = 0;

  //the string data type is used in email because the email contains both numeric and string characters
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