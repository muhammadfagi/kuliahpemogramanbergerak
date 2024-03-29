import 'package:flutter/material.dart';
import 'package:pemogramanbergerak/done_tourism_list.dart';
import 'model/tourism_place.dart';
import 'tourism_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Bandung'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DoneTourismList();
              }));
            },
          )
        ],
      ),
      body: TourismList(),
    );
  }
}

