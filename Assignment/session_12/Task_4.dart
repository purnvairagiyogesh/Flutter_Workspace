void main()
{
  var score = [34,56,100,32,67,78,76,4,33,67,65];
  var half_centure = 0;

  for(var s in score)
    {
      if(s >= 50)
        {
          half_centure++;
        }

    }
  print("Total Half-centuries : $half_centure ");
}