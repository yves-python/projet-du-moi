import 'dart:io';
import 'dart:math';



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

  String attak_player_bot_20() {
        int sante = 100 ;
        var frapeplayer = (sante * 20 ) / 100;
        var santee = sante - frapeplayer ;
        print(' assene un coup avec une force de 20% d\'on $frapeplayer au bot .');
        print(' Bot - sante : $santee ');
  }

  main(List<String> args) {
    attak_player_bot_20();
  }