import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:listas_2/lugares.dart';



bool isFavoriteLugar(Lugar lugar) {
  //return _favoritos.contains(lugar.id);
  !lugar.favorito;
}

void toggleFavoriteLugar(Lugar lugar) {
  if (favoritos.contains(lugar.id))
    favoritos.remove(lugar.id);
  else
    favoritos.add(lugar.id);

  saveFavorites();
}


void saveFavorites() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setStringList("favoritos",favoritos);
  //print(_favoritos.toList());
}

