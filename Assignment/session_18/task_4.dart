class Movie
{
  var title;
  var genre;
  var releaseYear;

  Movie({var n, var c = null , var r = 2024})
  {
    title = n;
    genre = c;
    releaseYear = r;
    
    print("\n The Movie title : $title \n The Movie genre : $genre \n The Movie releaseYear : $releaseYear");
  }
}

void main()
{
  Movie Bollywood = Movie(n:"Bhool Bhulaiyaa");

  
}