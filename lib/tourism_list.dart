import 'package:flutter/material.dart';
import 'package:pemogramanbergerak/detail_screen.dart';
import 'package:pemogramanbergerak/model/tourism_place.dart';
import 'list_item.dart';
import 'package:provider/provider.dart';
import 'provider/done_tourism_provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  List<TourismPlace> doneTourismPlaceList = [];
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: "Surabaya Submarine Monument",
      location: "Jl Pemuda",
      imageAsset: "assets/surabayasubmarinemonument.jpg",
      imageDetail1: "assets/detailsubmarine1.jpeg",
      imageDetail2: "assets/detailsubmarine2.png",
      imageDetail3: "assets/detailsubmarine3.jpg",
      imageDetail4: "assets/detailsubmarine4.jpg",
      deskripsi: "Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam "
          "yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota yaitu di Jalan Pemuda, "
          "tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen. "
          "Monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut "
          "Republik Indonesia buatan Uni Soviet tahun 1952. Kapal selam ini pernah dilibatkan dalam Pertempuran "
          "Laut Aru untuk membebaskan Irian Barat dari pendudukan Belanda.",
      jamBuka: "08.00 - 17.00",
      harga: "Rp.10.000",
    ),

    TourismPlace(
      name: "Kelenteng Sanggar Agung",
      location: "Kenjeran",
      imageAsset: "assets/kelentangagung.jpg",
      imageDetail1: "assets/detailkelenteng1.jpg",
      imageDetail2: "assets/detailkelenteng2.jpeg",
      imageDetail3: "assets/detailkelenteng3.jpg",
      imageDetail4: "assets/detailkelenteng4.jpg",
      deskripsi: "Kelenteng Sanggar Agung atau Klenteng Hong San Tang adalah sebuah klenteng di Kota Surabaya. "
          "Alamatnya berada di Jalan Sukolilo Nomor 100, Pantai Ria Kenjeran, Surabaya. Kuil ini, "
          "selain menjadi tempat ibadah bagi pemeluk Tridharma, juga menjadi tempat tujuan wisata bagi "
          "para wisatawan. Klenteng ini dibuka pada tahun 1999.",
      jamBuka: "07.00 - 15.00",
      harga: "Rp.5.000",

    ),

    TourismPlace(
      name: "House of Sampoerna",
      location: "Krembangan Utara",
      imageAsset: "assets/housesampoerna.jpg",
      imageDetail1: "assets/sampoerna1.jpg",
      imageDetail2: "assets/sampoerna2.jpg",
      imageDetail3: "assets/sampoerna3.jpg",
      imageDetail4: "assets/sampoerna4.jpg",
      deskripsi: "House of Sampoerna adalah sebuah museum tembakau dan markas besar Sampoerna yang terletak di "
          "Surabaya. Gaya arsitektur dari bangunan utamanya yang dipengaruhi oleh gaya kolonial Belanda dibangun "
          "pada 1862 dan sekarang menjadi situs sejarah. Sebelumnya dipakai sebagai panti asuhan yang diurus "
          "oleh Belanda, tempat tersebut dibeli pada 1932 oleh Liem Seeng Tee‚ pendiri Sampoerna‚ dengan "
          "tujuan dipakai sebagai fasilitas produksi rokok besar pertama Sampoerna. Pada tahun 2003 yang "
          "bertepatan dengan HUT Sampoerna ke-90, bangunan ini dipugar dan diresmikan untuk umum sebagai "
          "museum. Lokasi lengkap museum berada di Taman Sampoerna No.6, Krembangan Utara, Kec. Pabean Cantian",
      jamBuka: "08.00 - 22.00",
      harga: "Rp.5.000",
    ),

    TourismPlace(
      name: "Tugu Pahlawan",
      location: "Alun-alun contong",
      imageAsset: "assets/tugu.jpg",
      imageDetail1: "assets/tugu1.jpeg",
      imageDetail2: "assets/tugu2.jpg",
      imageDetail3: "assets/tugu3.jpg",
      imageDetail4: "assets/tugu4.jpeg",
      deskripsi: "Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen "
          "ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk "
          "lengkungan-lengkungan (canalures) sebanyak 10 lengkungan, dan terbagi atas 11 ruas. Tinggi, ruas "
          "dan canalures mengandung makna tanggal 10, bulan 11, tahun 1945. Suatu tanggal bersejarah, bukan "
          "hanya bagi penduduk Kota Surabaya, tetapi juga bagi seluruh Rakyat Indonesia. Tugu Pahlawan dibangun "
          "untuk memperingati peristiwa Pertempuran 10 November 1945 di Surabaya, di mana arek-arek Suroboyo "
          "berjuang melawan pasukan Sekutu bersama Belanda yang hendak menjajah kembali Indonesia. Monumen "
          "Tugu Pahlawan menjadi pusat perhatian setiap tanggal 10 November mengenang peristiwa pada tahun "
          "1945 ketika banyak pahlawan yang gugur dalam perang kemerdekaan",
      jamBuka: "09.00 - 20.00",
      harga: "Rp.15.000",
    ),
    TourismPlace(
      name: "Patung Suro Boyo",
      location: "Wonokromo",
      imageAsset: "assets/patungsuroboyo.jpg",
      imageDetail1: "assets/detailsuroboyo1.jpg",
      imageDetail2: "assets/detailsuroboyo2.jpeg",
      imageDetail3: "assets/detailsuroboyo3.jpg",
      imageDetail4: "assets/detailsuroboyo4.jpg",
      deskripsi: "Patung Sura dan Baya (Jawa: Patung Suro lan Boyo) adalah sebuah patung yang merupakan "
          "lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri "
          "atas dua hewan yaitu buaya dan hiu yang menjadi inspirasi nama kota Surabaya: ikan sura (hiu) dan "
          "baya (buaya). Patung ini dibangun pada tahun 1988oleh seorang pemahan yang bernama Sigit Margono "
          "dengan bahan semen dan di arsitek ii oleh Sutomo kusnadi patung ini bertahan sampai sekarang, "
          "terlepas dari kisah dahulu patung ini menjadi lambang keberanian para pemuda kota Surabaya alam "
          "mempertahankan daerah kekuasaannya",
      jamBuka: "08.00 - 18.00",
      harga: "Rp.-",
    ),
    TourismPlace(
      name: "Taman Bungkul",
      location: "Darmo",
      imageAsset: "assets/bungkul.png",
      imageDetail1: "assets/bungkul1.jpg",
      imageDetail2: "assets/bungkul2.jpg",
      imageDetail3: "assets/bungkul3.jpg",
      imageDetail4: "assets/bungkul4.jpg",
      deskripsi: "Taman Bungkul adalah taman wisata kota yang terletak di pusat kota Surabaya, tepatnya di "
          "Jalan Raya Darmo. Taman ini berdiri di area seluas 900 meter persegi. Dilengkapi berbagai "
          "fasilitas penunjang, seperti amfiteater berdiameter 33 meter, lajur joging, lahan papan luncur, "
          "taman bermain anak-anak, air mancur, dan pujasera. Selain itu, taman ini juga dilengkapi akses "
          "internet nirkabel yang terbuka untuk umum sehingga siapapun bisa mengakses internet selama di "
          "taman ini. Letaknya yang berada di jantung Kota Surabaya membuat taman ini tidak hanya berfungsi "
          "sebagai lahan hijau saja, tetapi juga sebagai destinasi wisata yang populer di Surabaya.",
      jamBuka: "24 Jam",
      harga: "Rp.-",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index){
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(place: place);
                }
              ));
            },
            child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget){
                return ListItem(
                  place: place,
                  isDone: doneTourismPlaceList.contains(place),
                  onCheckboxClick: (bool? value) {
                    setState(() {
                      if(value != null){
                        value
                            ? doneTourismPlaceList.add(place)
                            : doneTourismPlaceList.remove(place);
                      }
                    });
                  },
                );
              }
            ),
          );
        },
      itemCount: tourismPlaceList.length,
    );
  }
}
