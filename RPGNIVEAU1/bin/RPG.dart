import 'dart:io';
import 'dart:math';



import '../lib/class_bot.dart';
import '../lib/class_players.dart';

import '../lib/utils.dart';


void main(List<String> arguments) {

  // 1 - creation de l'Objet Bot avec force 1 et sante 100
  final bot = Robot(1, 100);

  // lireText est une fonction qui peremet de recuperer le speudo
  final username = lireText('Entrez votre pseudo :');

  // 1 - creation de l'Objet player avec force 1 et sante 100
  final player = Players( 'this.pseudo' , 1, 100);
  player.pseudo = username;

  // souys fonction

  void attak_player_bot(bot, player) {
    final aleatoireplayers = Random();
    final frapeplayer = aleatoireplayers.nextInt(6) + 1 + aleatoireplayers.nextInt(6) + 1;
    bot.sante = bot.sante - frapeplayer ;

    print('${player.pseudo} assene un coupe de $frapeplayer au bot ');
    print(' Bot - sante : ${bot.sante} ');
}

void attak_bot_player(bot, player) {
    final aleatoirebot = Random();
    final frapebot = aleatoirebot.nextInt(6) + 1 + aleatoirebot.nextInt(6) + 1;
    player.sante = player.sante - frapebot ;

    print('le bot  assene un coupe de $frapebot a ${player.pseudo} ');
    print('${player.pseudo} - sante : ${player.sante} ');
}

void info_player(Players) {
  print('bienvenu ${player.pseudo} vous debuter la partie avec une force de ${player.force} et une sante de ${player.sante}');
}
void info_bot(Robot) {
  print('Un bot se présente à vous avec une force de ${bot.force} er une sante de ${bot.sante}...\n');
}

info_player(bot);
info_bot(bot);


  //  compteur : Me donne la possibiliter le compter le nombre de tour
  var compteur = 0;

      do {
        // Entree
        lireText('Appuyez sur entrée pour lancer les dés');

        // Lancer de Dee aleatoire du players et du bot
        final aleatoireBot = Random();
        final lanceplayer = aleatoireBot.nextInt(6) + 1 + aleatoireBot.nextInt(6) + 1;
        final lanceBot = aleatoireBot.nextInt(6) + 1 + aleatoireBot.nextInt(6) + 1;

        print('${player.pseudo} a lance : $lanceplayer');
        print('le bot a lance : $lanceBot');

          if (lanceplayer > lanceBot) {
    // le player attaque en premier
            print('${player.pseudo} remporte le lance et attaque en premier');
            print('---------------${player.pseudo} attaque----------');
            attak_player_bot(bot, player);
              if (bot.sante <= 0) {
                print('================${player.pseudo} remporte la victoir===========');
                break;
              }

    // le bot attaque en second
            print('--------------Bot  attaque----------');

            attak_bot_player(bot, player);
              if (player.sante <= 0) {
                print('=========== G A M E   O V E R ==========');
                break;
              }
          }

          if (lanceplayer < lanceBot) {
            print('le bot attaque en premier');
             print('--------------Bot  attaque----------');
             attak_bot_player(bot, player);
              if (player.sante <= 0) {
                print('=========== G A M E   O V E R ==========');
                break;
              }

            print('---------------${player.pseudo} attaque----------');
              attak_player_bot(bot, player);
              if (bot.sante <= 0) {
                print('=======${player.pseudo} remporte la victoir=========');
                break;
              }
          }
          if (lanceplayer == lanceBot) {
              print('tirage egau relancer les dees');
          }

        compteur++;
        print('Fin du tour $compteur\n');
      } while (bot.sante > 0 || player.sante > 0 );


}
