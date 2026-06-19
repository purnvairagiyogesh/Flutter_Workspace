void main()
{
  var favRestaurants = ["Indian", "Chinese", "Italian", "Indian", "Mexican"];

  filterUniqueCuisines (favRestaurants);

}

filterUniqueCuisines (var name)
{
  var set_name = name.toSet();

  print(set_name);

  // var set = Set();
  //  for(var n in name)
  //    {
  //      set.add(n);
  //    }
  //  print(set);
}