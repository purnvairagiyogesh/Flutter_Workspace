import 'dart:io';

void main() {
  print('══════════════════════════════');
  print('     Favorite Food Finder');
  print('══════════════════════════════');
  print('Choose your favorite food:');
  print('1. Pizza');
  print('2. Burger');
  print('3. Dosa');
  print('4. Biryani');
  print('══════════════════════════════');

  stdout.write('Enter your choice: ');
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
    case 'pizza':
    case 'Pizza':
      print('\n🍕 Pizza Lover!');
      print('You enjoy cheesy, delicious, and customizable meals.');
      break;

    case '2':
    case 'burger':
    case 'Burger':
      print('\n🍔 Burger Fan!');
      print('You love quick, tasty, and satisfying food.');
      break;

    case '3':
    case 'dosa':
    case 'Dosa':
      print('\n🥞 Dosa Enthusiast!');
      print('You have excellent taste in South Indian cuisine.');
      break;

    case '4':
    case 'biryani':
    case 'Biryani':
      print('\n🍛 Biryani Lover!');
      print('You appreciate rich flavors and aromatic spices.');
      break;

    default:
      print('\n❌ Invalid choice!');
      print('Please select 1, 2, 3, 4 or enter a valid food name.');
  }

  print('\nThank you for participating! 😊');
}