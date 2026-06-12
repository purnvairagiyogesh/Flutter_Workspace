import 'dart:io';

void main()
{
  print("Enter Your Followers : ");
  int followers = int.parse(stdin.readLineSync().toString());

  print("Enter Your Following :");
  int following = int.parse(stdin.readLineSync().toString());

  var dif = 0;

  dif = followers - following;

  print("The difference between followers and following of your account is (followers - following) : $dif");

}