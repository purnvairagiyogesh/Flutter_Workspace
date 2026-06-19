void main()
{
  var product = {"title":"iphone 16", "Price":69999.0, "inStock":true};

  print("Before the Upadate in Map : ");
  print("Title : ${product["title"]}");
  print("Price : ${product["Price"]}");
  print("InStock : ${product["inStock"]}");

  product["inStock"] = false;

  print("----------------------------");

  print("After the Upadate in Map : ");
  print("Title : ${product["title"]}");
  print("Price : ${product["Price"]}");
  print("InStock : ${product["inStock"]}");

}