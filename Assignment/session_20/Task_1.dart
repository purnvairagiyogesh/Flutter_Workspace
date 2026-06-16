Future fetchTrendingSongs(var str)
{
  final duration = Duration(seconds: 2);
  return Future.delayed(duration).then((value) => str);
}

void main() async
{ 
   var songs = ["You and Me", "Tere Liye", "Blue Eyes", "Baby"];
   
   await fetchTrendingSongs("Top Songs Loaded!").then((value)
   {
     print(value);
   });

   for(var s in songs)
     {
       print(s);
     }
}