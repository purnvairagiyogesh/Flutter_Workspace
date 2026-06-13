class ProductUser
{

  var name = "Yogi";

}

class CustomerUser extends ProductUser
{
  placeOrder(var productName)
  {
    print("Your Order Placed for $productName by ${this.name}");
  }
}

void main()
{
  CustomerUser  obj1 = CustomerUser ();


  obj1.placeOrder("iPhone 16");

}