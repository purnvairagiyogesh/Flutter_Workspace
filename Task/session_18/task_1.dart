class Restaurant
{
  var name;
  var cuisine;
  var rating;
  
  Restaurant(var n, var c, var r)
  {
    name = n;
    cuisine = c;
    rating = r;
    
    print("\n The Restaurant name : $name \n The Restaurand cuisine : $cuisine \n The Restaurant rating : $rating");
  }
}

void main()
{
  Restaurant obj1 = Restaurant("GJ-5", "South-indian", "4.6");

}