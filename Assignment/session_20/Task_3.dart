import 'dart:io';

getMovieTickets(var tickets)
{

  try
  {

    if(tickets > 6)
    {
      throw Exception("Cannot book more than 6 Tickets!");
    }
    else
    {
      print("Your $tickets Tickets are Booked!");
    }
  }
  catch(e)
  {
    print(e);
  }
}

void main()
{

  print("Enter How many Tickets Do you want to book : ");
  var tickets = int.parse(stdin.readLineSync().toString());

  getMovieTickets(tickets);
}