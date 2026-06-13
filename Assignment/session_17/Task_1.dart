import 'dart:io';

isValidUsername(var pass)
{
  var bool;

  if(pass.contains(' ') || pass.length < 6)
    {
      bool=false;
      print("Username Validation : $bool");
    }
  else
    {
      bool=true;
      print("Username Validation : $bool");
    }
    return bool;
}

void main()
{
  print("Enter The Username (Use minimum 6 characters and no space) :");
  var uname = stdin.readLineSync().toString();

  print(isValidUsername(uname));

}