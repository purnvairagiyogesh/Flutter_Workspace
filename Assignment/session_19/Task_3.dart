class ProductUser
{
  var name = "Yogi";
  var email = "yogi@gmail.com";
  static var totalUsers = 0;

  ProductUser()
  {
    totalUsers++;
    if(totalUsers == 3)
      {
         print("Total User created are : $totalUsers");
      }

  }

  displayInfo()
  {
    print("Name : $name");
    print("Email : $email");
  }
}

class SellerUser extends ProductUser
{
  var shopName = "Radhe-Krishna";

  @override
  displayInfo() {
    super.displayInfo();
    print("ShopName : $shopName");
  }
}

void main()
{
  SellerUser obj1 = SellerUser();
  SellerUser obj2 = SellerUser();
  SellerUser obj3 = SellerUser();

  obj1.displayInfo();
  obj2.displayInfo();
  obj3.displayInfo();
}