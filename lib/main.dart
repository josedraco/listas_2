import 'package:flutter/material.dart';
import 'package:listas_2/lugares.dart';

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

  _incrementCounter() {

    lugares[ind].favorito=true;

    setState(() {
      _counter++;
    });
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
          return new ListTile(
            title: new Text(lugares[i].name,),
            trailing: new IconButton(
              icon: lugares[i].favorito ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
              color: lugares[i].favorito ? Colors.red : null,
              onPressed: () {setState(() {
                lugares[i].favorito = ! lugares[i].favorito;
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
