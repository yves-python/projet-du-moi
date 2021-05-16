import 'dart:io';
import 'dart:math';
import 'class_bot.dart';
import 'class_players.dart';

int lanceDee(String playerName) {
  final aleatoire = Random();
  final nombreAleatoire = aleatoire.nextInt(6) + 1 + aleatoire.nextInt(6) + 1;
  print('$playerName a lancé les dés et a obtenu la valeur $nombreAleatoire');
  return nombreAleatoire;
}

String lireText(String question) {
  print(question);
  return stdin.readLineSync();
}