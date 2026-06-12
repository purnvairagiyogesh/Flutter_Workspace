void main()
{
  var productname = ["iPhone 13","samsung s26","vivo Y500","oppo rino 14"];


  for(int i = productname.length; i >= 0; i--)
    {
      print(productname);
      productname.removeAt(0);

    }
}