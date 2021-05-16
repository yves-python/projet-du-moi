import 'dart:math';
import 'package:RPG/class_arme.dart';

class Players {

    // le variable préceédée de "_" son des variable privé de class player
  String _pseudo;
  double _force;
  int _sante;
  Arme armeplayer;

      // creation de getter pour la class
      String get pseudo {
        return _pseudo;
      }
      double get force {
        return _force;
      }
      int get sante {
        return _sante;
      }


      void set pseudo(String pseudo) {
        this._pseudo = pseudo;
      }
      void set force(double force) {
        this._force = force;
      }
      void set sante(int sante) {
        this._sante = sante;
      }
      

      Players(this.armeplayer,this._pseudo, this._force, this._sante);

        void attak_player_bot_normal(bot, player) {
        final aleatoirebot = Random();
        final lancealeatoir = (aleatoirebot.nextInt(6) + 1 + aleatoirebot.nextInt(6) + 1);
        var frapeplayer = (lancealeatoir * player.force * armeplayer.puissanceArme * armeplayer.precisionArme ) / 100;
        bot.sante = bot.sante - frapeplayer ;
        print('${player.pseudo} assene un coup avec une force de $frapeplayer au bot .');
        print(' Bot - sante : ${bot.sante} ');
      }
        void attak_player_bot_double(bot, player) {
        final aleatoirebot = Random();
        final lancealeatoir = (aleatoirebot.nextInt(6) + 1 + aleatoirebot.nextInt(6) + 1);
        var frapeplayer = ((lancealeatoir * player.force * armeplayer.puissanceArme * armeplayer.precisionArme ) / 100) * 2;    
       bot.sante = bot.sante - frapeplayer ;
        print('${player.pseudo} assene un coup avec une force de $frapeplayer au bot .');
        print(' Bot - sante : ${bot.sante} ');
      }
        void attak_player_bot_triple(bot, player) {
        final aleatoirebot = Random();
        final lancealeatoir = (aleatoirebot.nextInt(6) + 1 + aleatoirebot.nextInt(6) + 1);
        var frapeplayer = ((lancealeatoir * player.force * armeplayer.puissanceArme * armeplayer.precisionArme ) / 100) * 3;        
        bot.sante = bot.sante - frapeplayer ;
        print('${player.pseudo} assene un coup avec une force de $frapeplayer au bot .');
        print(' Bot - sante : ${bot.sante} ');
      }

      void info_player(player) {
          print('bienvenu ${player.pseudo} vous debuter la partie avec les caracteristique suivante : \n force : ${player.force} \n sante : ${player.sante} \n Arme :${armeplayer.nomArme} \n puissance de l\'arme : ${armeplayer.puissanceArme} \n precision de l\'arme : ${armeplayer.precisionArme} \' ');
        }
      void victoir(player) {
        print('===========================================================');
        print('||         felicitation ${player.pseudo} vous venez de batre le bot      ||');
        print('===========================================================');
      }

}