import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Bugün Ne Yesem",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int CorbaNo = 1;
  int YemekNo = 1;
  int TatliNo = 1;

  int previousCorbaNo = 0;
  int previousYemekNo = 0;
  int previousTatliNo = 0;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuk Suyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Mevo',
    'Kazandibi',
    'Dondurma'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent),
                  onPressed: () {
                    int newCorbaNo;
                    do {
                      newCorbaNo = Random().nextInt(5) + 1;
                    } while (newCorbaNo == previousCorbaNo);
                    setState(() {
                      CorbaNo = newCorbaNo;
                      previousCorbaNo = newCorbaNo;
                    });
                  },
                  child: Image.asset('assets/corba_$CorbaNo.jpg')),
            ),
          ),
          Text(
            corbaAdlari[CorbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent),
                  onPressed: () {
                    int newYemekNo;
                    do {
                      newYemekNo = Random().nextInt(5) + 1;
                    } while (newYemekNo == previousYemekNo);
                    setState(() {
                      YemekNo = newYemekNo;
                      previousYemekNo = newYemekNo;
                    });
                  },
                  child: Image.asset('assets/yemek_$YemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[YemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                  ),
                  onPressed: () {
                    int newTatliNo;
                    do {
                      newTatliNo = Random().nextInt(5) + 1;
                    } while (newTatliNo == previousTatliNo);
                    setState(() {
                      TatliNo = newTatliNo;
                      previousTatliNo = newTatliNo;
                    });
                  },
                  child: Image.asset('assets/tatli_$TatliNo.jpg')),
            ),
          ),
          Text(
            tatliAdlari[TatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
