void main()
{
  Map moviename = {"spider-man ":10.0,"Doctor Strange":9.5, "Avengers":10.0, "The Batman":9.9, "The Odyssey":10.0};


  for(var str in moviename.entries)
    {
      print("${str.key}  :  ${str.value}/10");
    }
}