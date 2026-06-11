import 'dart:io';

class Playlist
{
  var playlistName ;
  var songCount = 0;

  
  Playlist(var n)
  {
    playlistName  = n;
    print("\n The Playlist playlistName  : $playlistName");
  }

  addsong()
  {
    songCount++;
  }
}

void main()
{

  Playlist pl = Playlist("90s playlist");
  pl.addsong();
  pl.addsong();
  pl.addsong();
  print("${pl.songCount}");

}