class Lugar {
  final String id;
  final String name;
  final String categoria;
  final String situacion;
  bool favorito;


  Lugar(this.id, this.name, this.categoria, this.situacion, this.favorito);

  bool get _fav => favorito;
  set fav(bool favorito) => favorito = favorito;
}

List<Lugar> lugares = [
  Lugar(
      "1",
      "Palacio de Valdecarzana",
      "Historico",
      "Calle Sol, 1, 33402 Avilés, Asturias",
      false
  ),
  Lugar(
      "2",
      "Palacio de Ferrera",
      "Historico",
      "Calle Sol, 1, 33402 Avilés, Asturias",
      false
  ),
  Lugar(
      "3",
      "Palacio de Macua",
      "Historico",
      "Calle Sol, 1, 33402 Avilés, Asturias",
      false
  ),
  Lugar(
      "4",
      "Palacio de Balsera",
      "Historico",
      "Calle Sol, 1, 33402 Avilés, Asturias",
      false
  ),
  Lugar(
      "5",
      "Palacio de Llano Ponte",
      "Historico",
      "Calle Sol, 1, 33402 Avilés, Asturias",
      false
  ),
  Lugar(
      "6",
      "Palacio de Camposagrado",
      "Historico",
      "Calle Sol, 1, 33402 Avilés, Asturias",
      false
  ),

];