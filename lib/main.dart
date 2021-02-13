import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Project Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  dense: true,
                  enabled: true,
                  leading: CircleAvatar(
                    child: Text(
                      "APR",
                    ),
                    backgroundColor: Colors.green,
                  ),
                  trailing: CircleAvatar(
                    child: Text("100"),
                    backgroundColor: Colors.green,
                  ),
                  title: Text('Programación Móvil 2'),
                  subtitle: Text(
                    '1804',
                    style: TextStyle(color: Colors.orangeAccent),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Text("I"),
                        CircleAvatar(
                          child: Text("20"),
                          backgroundColor: Colors.blueGrey,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("II"),
                        CircleAvatar(
                          child: Text("20"),
                          backgroundColor: Colors.blueGrey,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("III"),
                        CircleAvatar(
                          child: Text("20"),
                          backgroundColor: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 10.0,
                ),
              ],
            )),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
