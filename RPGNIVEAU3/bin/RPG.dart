import 'dart:math';
import '../lib/class_bot.dart';
import '../lib/class_players.dart';
import '../lib/utils.dart';
import 'dart:io';

void main(List<String> arguments) {

  // 1 - creation de l'Objet Bot avec force 1 et sante 100
  final bot = Robot(2, 100);

  // lireText est une fonction qui peremet de recuperer le speudo
  final username = lireText('Entrez votre pseudo :');

  // 1 - creation de l'Objet player avec force 1 et sante 100
  final player = Players( 'this.pseudo' , 3, 100);
  player.pseudo = username;

   // info player et bot 
  player.info_player(player);
  bot.info_bot(bot);

  //  compteur : Me donne la possibiliter le compter le nombre de tour
  var compteur = 0;

       do {
        // Entree
        // lireText('Appuyez sur entrée pour lancer les dés');

        // Lancer de Dee aleatoire du players et du bot
        final aleatoireBot = Random();
        final lanceplayer = aleatoireBot.nextInt(6) + 1 + aleatoireBot.nextInt(6) + 1;
        final lanceBot = aleatoireBot.nextInt(6) + 1 + aleatoireBot.nextInt(6) + 1;
        //
        //
        // la valeur du tirage nest pas la force dattaque 
        //
        //
        print('${player.pseudo} a lance : $lanceplayer');
        print('le bot a lance : $lanceBot');

          if (lanceplayer > lanceBot) {
         // le player attaque en premier
            print('${player.pseudo} remporte le lance et attaque en premier');
            print('vous avez trois choix d\'attaques \n');
            print(' 1 - force normale, vous donne 20% de reussite \n 2 - force doublé, vous donne 50% de reussite. \n 3 - force triplée, vous donne 100% de reussite');
            var reponse = int.parse(lireText('Taper 1 ou 2 ou 3 en fonction de votre choix'));
            print(reponse);

            if (reponse == 1 ) {
            print('---------------${player.pseudo} attaque----------');
            player.attak_player_bot_20(bot, player);
              if (bot.sante <= 0) {
                player.victoir(player);
                break;
              }
            }
            if (reponse == 2 && player.sante <= 50 ) {
            print('---------------${player.pseudo} attaque----------');
            player.attak_player_bot_50(bot, player);
              if (bot.sante <= 0) {
                player.victoir(player);
                break;
              } 
            }else if (reponse == 2 && player.sante >= 50) {
                print('vos point de vie son superieir a 50 vous ne pouvez qu\'attaquer avec votre force normal ');
                print(reponse);

              }

            if (reponse == 3 && player.sante <= 30 ) {
            print('---------------${player.pseudo} attaque----------');
            player.attak_player_bot_100(bot, player);
              if (bot.sante <= 0) {
                player.victoir(player);
                break;
              }
            } else if(reponse == 3 && player.sante >= 30) {
                print('vos point de vie son superieir a 30 vous ne pouvez qu\'attaquer qvec votre force normal ou avec 50% de force ');
                print(reponse);

            }
            else if (reponse != 1 && reponse != 2 && reponse != 3) {
              print('chois non repertorier recommencez');
              print(reponse);

            }
 

       // le bot attaque en second
            print('--------------Bot  attaque----------');

            bot.attak_bot_player(bot, player);
              if (player.sante <= 0) {
                print('=========== G A M E   O V E R ==========');
                break;
              }
          }

          if (lanceplayer < lanceBot) {
            //le bot attaque en premier
             print('le bot attaque en premier');
             print('--------------Bot  attaque----------');
             bot.attak_bot_player(bot, player);
              if (player.sante <= 0) {
                print('=========== G A M E   O V E R ==========');
                break;
              }

            // le player attaque en second
            print('---------------${player.pseudo} attaque----------');
            print('vous avez trois choix d\'attaques \n');
            print(' 1 - force normale, vous donne 20% de reussite \n 2 - force doublé, vous donne 50% de reussite avec un niveau de vie inferieur a 50. \n 3 - force triplée, vous donne 100% de reussite avec un niveau de vie inferieur a 30');
            var reponse = int.parse(lireText('Taper 1 ou 2 ou 3 en fonction de votre choix'));
            print(reponse);

            if (reponse == 1 ) {
            player.attak_player_bot_20(bot, player);
              if (bot.sante <= 0) {
                player.victoir(player);
                break;
              }
            }
            if (reponse == 2 && player.sante <= 50) {
            print('---------------${player.pseudo} attaque----------');
            player.attak_player_bot_50(bot, player);
              if (bot.sante <= 0) {
                player.victoir(player);
                break;
              }
            }else if (reponse == 2 && player.sante >= 50) {

              print('vos point de vie son superieir a 50 vous ne pouvez qu\'attaquer qvec votre force normal ');

            }

            if (reponse == 3 && player.sante <= 30 ) {
            print('---------------${player.pseudo} attaque----------');
            player.attak_player_bot_100(bot, player);
              if (bot.sante <= 0) {
                player.victoir(player);
                break;
              }
            } else if (reponse == 3 && player.sante >= 30) {
              print('vos point de vie son superieir a 30 vous ne pouvez qu\'attaquer avec votre force normal ou avec 50% de force ');

            }
            if(reponse != 1 && reponse != 2 &&  reponse != 3) {
              print('choix non repertorier');
            }
        }
          if (lanceplayer == lanceBot) {
              print('tirage egau relancer les dees');
          }
        compteur++;
        print('Fin du tour $compteur\n');
      } while (bot.sante > 0 || player.sante > 0 );
}     