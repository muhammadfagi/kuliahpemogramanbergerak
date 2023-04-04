import 'package:flutter/material.dart';
import 'package:pemogramanbergerak/main_screen.dart';
import 'provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: "Contacts",
        theme: ThemeData(),
        home: MainScreen(),
      ),
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
        _counter = 1;
      }

      if(_counter%2 == 0){
        text = "Genap";
      } else {
        text = "Ganjil";
      }

      _text = "Ganjil: ";
      for(int i=1; i<=_counter; i++){
        if(i%2 != 0){
          _text += '$i, ';
        }
      }

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

  void kelipatanTiga(){

    setState(() {

    });
  }

  void prima(){
    setState(() {


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
              Text(
                '$_count',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(value, style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 40),
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


