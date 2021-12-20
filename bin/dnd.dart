import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {

  Random rng = new Random();

  int strenght = 0;
  int dexteraty = 0;
  int constitution = 0;
  int inteligence = 0 ;
  int wisdom = 0 ;
  int charisma = 0;

  List race_list = ['Dwarf', 'elf', 'halfling', 'human', 'dragonborn', 'gnome', 'half elf', 'half orc', 'tiefling'];

  List stats = new List();

  print('Welcome to the dnd charecter sheet maker, what is your charecter name?');
  String c_name = stdin.readLineSync();

  print('hello $c_name lets start shall we.');

  for (int i = 0; i < 6; i++) {
    int a = rng.nextInt(6) + 1;
    int b = rng.nextInt(6) + 1;
    int c = rng.nextInt(6) + 1;
    int dice = a + b + c;
    stats.add(dice);
  }

  while (true) {
    print('''
what race would you like to be?
the race you pic have inluence on your stats.
the races you can be are $race_list''');
    String race = stdin.readLineSync();

    race.toLowerCase();

    if (race == 'dwarf') {
      constitution += 2;
      break;
    } else if (race == 'elf') {
      dexteraty += 2;
      break;
    } else if (race == 'halfling') {
      dexteraty += 2;
      break;
    } else if (race == 'human') {
      strenght += 1;
      dexteraty += 1;
      constitution += 1;
      inteligence += 1;
      wisdom += 1;
      charisma += 1;
      break;
    } else if (race == 'dragonborn') {
      strenght += 2;
      charisma += 1;
      break;
    } else if (race == 'gnome') {
      inteligence += 2;
      break;
    } else if (race == 'half elf') {
      inteligence += 1;
      charisma += 2;
      break;
    } else if (race == 'half orc') {
      strenght += 2;
      constitution += 1;
      break;
    } else if (race == 'tiefling') {
      inteligence += 1;
      charisma += 2;
      break;
    } else {
      print('sorry but eather thats not in yet or it just dosent exist');
    }
  }

  print('''
Great! now lets role those stats.
you roled
$stats
these are what you use for your stats''');

}
