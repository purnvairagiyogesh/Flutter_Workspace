import 'dart:io';
void main()
{
  print("Enter Your First Name : ");
  var fn = stdin.readLineSync().toString();

  print("Enter Your Last Name : ");
  var ln = stdin.readLineSync().toString();

  var name = {"FN":fn, "LN":ln};
  getUserDisplayName(name);
}

getUserDisplayName(var user)
{
  var n = {"firstName":user["FN"],"lastName":user["LN"]};

  print("${n["lastName"]} ${n["firstName"]}");

}