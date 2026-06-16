import 'dart:io';
import 'dart:math';

processPayment()
{
  try {
    var bool = Random().nextBool();

    if (bool == true)
    {
      print("Payment Successful!");
    }
    else
    {
      throw Exception("Payment Failed:[Please Check your details again or refresh the page]");
    }
  }
  catch(e)
  {
    print(e);
  }
}

void main()
{
  processPayment();
}