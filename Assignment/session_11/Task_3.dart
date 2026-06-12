import 'dart:io';

loginStatus (var uname, var pass)
{
  if(uname == "user123" && pass == "pass123")
    {
      print("Login Successful!");
    }
  else if(uname == "user123" && pass != "pass123")
    {
      print("Incorrect Password!");
    }
  else
    {
      print("User Not Found!");
    }
}

void main()
{
  print("Enter Username : ");
  var uname = stdin.readLineSync().toString();

  print("Enter Password : ");
  var pass = stdin.readLineSync().toString();

  loginStatus (uname, pass);
}