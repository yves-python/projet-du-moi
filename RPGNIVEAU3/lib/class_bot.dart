import 'dart:math';

class Robot {
  double sante;
  int force;
  Robot(this.force, this.sante);

      void attak_bot_player(bot, player) {
        final aleatoirebot = Random();
        final frapebot = (aleatoirebot.nextInt(6) + 1 + aleatoirebot.nextInt(6) + 1) * bot.force;
        player.sante = player.sante - frapebot ;

        print('le bot  assene un coupe de $frapebot a ${player.pseudo} ');
        print('${player.pseudo} - sante : ${player.sante} ');
      } 
      void info_bot(bot) {
          print('Un bot se présente à vous avec une force de ${bot.force} er une sante de ${bot.sante}...\n');
      }
}