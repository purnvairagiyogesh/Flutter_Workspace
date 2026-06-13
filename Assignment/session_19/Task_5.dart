import 'dart:developer';

class User
{
  var name = "Yogi";
  var email = "yogi@gmail.com";

  displayInfo()
  {
    print("Name : $name");
    print("Email : $email");
  }
}


//Customer user class
class CustomerUser extends User
{
  @override
  displayInfo() {

    super.displayInfo();
    print("This is the customeruser class method with override functionality!");
  }
}


// Seller user class
class SellerUser extends User
{

  @override
  displayInfo() {
    super.displayInfo();
    print("This is the customeruser class method with override functionality!");
  }
}


// Process user function to use the class objects
processUser(User user)
{
  user.displayInfo();
}

void main()
{
  CustomerUser  c1 = CustomerUser ();
  SellerUser s1 = SellerUser();

  processUser(c1);

  print("");
  print("------------------------------");
  print("");

  processUser(s1);


}