class Arme {
String _nomArme;
int _puissanceArme;
double _precisionArme;

      String get nomArme {
        return _nomArme;
      }
      int get puissanceArme {
        return _puissanceArme;
      }
      double get precisionArme {
        return _precisionArme;
      }

      void set nomArme(String nomArme) {
        this._nomArme = nomArme ;
      }
      void set puissanceArme(int nomArme) {
        this._puissanceArme = puissanceArme ;
      }
      void set precisionArme(double precisionArme) {
        this._precisionArme = precisionArme ;
      }

      Arme(this._nomArme, this._puissanceArme, this._precisionArme);
}