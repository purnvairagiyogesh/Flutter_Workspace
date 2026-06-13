import 'dart:io';

validatePhoneNumber(var num)
{
  if(num.length == 10)
  {
      var fl=num[0];

      if(fl == 6 || fl == 9)
      {
          print("The Mobile Number is Valid Indian Number.");
      }
      else
      {
          print("The Mobile Number should start with 6/9.");
      }
  }
  else
  {
      print("The Indian Mobile Number have 10 Digits");
  }


}

void main()
{
  print("Enter Your Mobile Number :");
  var num = stdin.readLineSync().toString();

  validatePhoneNumber(num);

}