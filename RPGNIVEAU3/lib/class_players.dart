

class Players {
  String pseudo;
  int force;
  int sante;


      Players(this.pseudo, this.force, this.sante);

        void attak_player_bot_20(bot, player) {
        var frapeplayer = (bot.sante * 20 ) / 100;
        bot.sante = bot.sante - frapeplayer ;
        print('${player.pseudo} assene un coup avec une force de 20% d\'on $frapeplayer au bot .');
        print(' Bot - sante : ${bot.sante} ');
      }
        void attak_player_bot_50(bot, player) {
        var frapeplayer = (bot.sante * 50) / 100 ;
        bot.sante = bot.sante - frapeplayer ;
        print('${player.pseudo} assene un coup avec une force de 50% d\'on $frapeplayer au bot .');
        print(' Bot - sante : ${bot.sante} ');
      }
        void attak_player_bot_100(bot, player) {
        var frapeplayer = (bot.sante * 100) / 100 ;
        bot.sante = bot.sante - frapeplayer ;
        print('${player.pseudo} assene un coup avec une force de 100% d\'on $frapeplayer au bot .');
        print(' Bot - sante : ${bot.sante} ');
      }

      void info_player(player) {
          print('bienvenu ${player.pseudo} vous debuter la partie avec une force de ${player.force} et une sante de ${player.sante}');
        }
      void victoir(player) {
        print('===========================================================');
        print('||         felicitation ${player.pseudo} vous venez de batre le bot      ||');
        print('===========================================================');
      }

}