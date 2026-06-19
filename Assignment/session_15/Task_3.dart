void main()
{
  var favRestaurants = ["Domino's", "La pino's", "GJ-5"];
  print(favRestaurants);

  //Removing the Last value
  favRestaurants.removeLast();
  print(favRestaurants);

  //Removes the specific value using value and also can use removeAt() using index
  favRestaurants.remove("Domino's"); // favRestaurants.removeAt(0);
  print(favRestaurants);
}