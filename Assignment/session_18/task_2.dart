class Movie
{
  var title;
  var genre;
  var releaseYear;
  
  Movie(var n, var c, var r)
  {
    title = n;
    genre = c;
    releaseYear = r;
    
    print("\n The Movie title : $title \n The Movie genre : $genre \n The Movie releaseYear : $releaseYear");
  }
}

void main()
{
  Movie Bollywood = Movie("Bhool Bhulaiyaa", "Horror/comedy", "2007");
  Movie Hollywood = Movie("Spider-Mane : Brand New Day", "Adventure/Sci-fi", "2026");
  
}