class ProductUser
{
  var name = "Yogi";
  var email = "yogi@gmail.com";

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
  SellerUser obj = SellerUser();

  obj.displayInfo();
}