import 'dart:ui';

import 'model/tourism_place.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset(place.imageAsset),
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    child: Text(
                      place.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Lobster',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(Icons.calendar_today),
                            Text("Open Everyday"),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.schedule),
                            Text(place.jamBuka),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.paid),
                            Text(place.harga),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      place.deskripsi,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.0
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Image.asset(place.imageDetail1),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Image.asset(place.imageDetail2),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Image.asset(place.imageDetail3),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Image.asset(place.imageDetail4),
                        ),
                      ],
                    ),
                  )
                ],
              )
          ),
        ],
      )
    );
  }
}
