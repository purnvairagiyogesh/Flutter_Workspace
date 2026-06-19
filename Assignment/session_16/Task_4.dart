import 'dart:io';
void main()
{

  Map spotify = {"playlistName": "Chill Vibes", "songs" :["song A","song B","song C"]};

  var list = spotify["songs"] as List;
  list.add("Song D");

  print(spotify);



}