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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int _counter = 1;
  String value = "Genap";
  int _count = 1;
  int _countPrima = 1;
  String _text = "Ganjil";
  String text = "Ganjil";
  String primaValue = "Prima";
  TextEditingController controller = new TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter>10){
        _counter = 0;
      }
      _text = "Ganjil: ";
      for(int i=1; i<=_counter; i++){
        if(i%2 != 0){
          _text += '$i, ';
        }
      }

      if(_counter%2 == 0){
        text = "Genap";
      } else {
        text = "Ganjil";
      }
    });
  }

  void kelipatanTiga(){

    setState(() {
      _count++;
      value = "Genap: ";
      // int rubah = int.parse(controller.text);
      for(var i = 1; i<=_count; i++){
        if(i%3 == 0){
          if(i%2 == 0){
            value += '$i, ';
          }
        }
      }
    });
  }

  void prima(){
    setState(() {
      _countPrima++;
      int bil;

      primaValue = "Prima: ";
      for(var i = 1; i<=_countPrima; i++){
        bil = 0;
        for(int j = 1; j<=i; j++){
          if(i%j == 0){
            bil++;
          }
        }
        if(bil==2){
          primaValue+= '$i, ';
        }
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                'percobaan 1',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 40),
              Text(
                'percobaan 2',
              ),
              Text(
                text, style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 40),
              Text(
                'percobaan 3',
              ),
              Text(
                _text, style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: kelipatanTiga,
                // },
                child: const Text('Latihan Genap Kelipatan 3'),
              ),
              Text(
                '$_count',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(value, style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: prima,
                // },
                child: const Text('Tugas Bilangan Prima'),
              ),
              Text(
                '$_countPrima',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(primaValue, style: Theme.of(context).textTheme.headline4),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


