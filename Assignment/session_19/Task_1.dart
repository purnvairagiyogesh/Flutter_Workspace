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
void main()
{
  ProductUser obj = ProductUser();

  obj.displayInfo();
}