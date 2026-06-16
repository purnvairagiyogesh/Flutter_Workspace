import 'dart:io';

Future getOrderStatus(var isdelivered)
{
  if(isdelivered == true) {
    final duration = Duration(seconds: 3);
    return Future.delayed(duration).then((Value) => "Order Delivered!");
  }
  else
    {
      final duration = Duration(seconds: 3);
      return Future.delayed(duration).then((Value) => "Order is not Delivered! \nIt will be delivered Soon");
    }
}

void main() async
{
  print("Enter Your Order Number : ");
  var order = int.parse(stdin.readLineSync().toString());
  var isdelivered;
  if(order % 2 == 0)
    {
      isdelivered = true;
    }
  else
    {
      isdelivered = false;
    }
  print("Checking Your Order Delivery....");

  await getOrderStatus(isdelivered).then((status)
      {
        print(status);
      });
}