import 'package:pemogramanbergerak/model/tourism_place.dart';
import './provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class DoneTourismList extends StatelessWidget {
  const DoneTourismList({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(
          context,
          listen: false,
        ).doneTourismPlaceList;
    print(doneTourismPlaceList.length);

    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata Telah Dikunjungi"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            final TourismPlace place = doneTourismPlaceList[index];
            return Card(
              color: Colors.white60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(place.location)
                        ],
                      ),
                    ),
                  ),
                  const Icon(Icons.download_done_sharp, color: Colors.green)
                ],
              ),
            );
          },
          itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}
