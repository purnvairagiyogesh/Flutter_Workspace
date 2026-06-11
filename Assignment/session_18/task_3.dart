class Product
{
  var ProductName;
  var price;
  var isAvailable;
  
  Product(var n, var c, var r)
  {
    ProductName = n;
    price = c;
    isAvailable = r;

  }

  displayProduct()
  {
    print("\n The Flipkart Product ProductName : $ProductName \n The Flipkart Product price : $price \n The Flipkart Product isAvailable : $isAvailable");
  }
}

void main()
{
  Product item1 = Product("Titan Karishma Black Dial Brown Stainless Steel Strap Analog Watch", "₹3,556", "True");

  item1.displayProduct();

}