import 'package:flutter/material.dart';
import 'package:listas_2/lugares.dart';
import 'package:listas_2/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int ind;
  //List<String> _favoritos =[];

  @override
  initState() {
    super.initState();
    loadFavorites();
  }

  void loadFavorites() async {
    int i;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    //print("entra loadpref");
    try {
      // List<int> favs = jsonDecode(prefs.getStringList("favoritos").toSet());
      favoritos = prefs.getStringList("favoritos").toList();

      for (var l in favoritos)
      {
        i = int.parse(l)-1;
        setState((){
          lugares[i].favorito = !lugares[i].favorito;
          }
          );
      }
    } catch (e) {
      //print("entra error");
      //_favoritos = new Set<String>();
    }
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(

        title: new Text(widget.title),
      ),
      body: new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: lugares.length,
        itemBuilder: (context,  i) {
          if (i.isOdd) new Divider();
          ind = i;
          //print(ind);
          //return _buildRow(_suggestions[index]);
          //_getFavorites();
          return new ListTile(
            title: new Text(lugares[i].name,),
            trailing: new IconButton(

              icon: lugares[i].favorito ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
              color: lugares[i].favorito ? Colors.red : null,
              onPressed: () {setState(() {
                lugares[i].favorito = ! lugares[i].favorito;
                toggleFavoriteLugar(lugares[i]);
                //print(lugares[i].favorito);
              });
              },
            ),
          );
        },
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }



}
