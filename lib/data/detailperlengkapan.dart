import 'package:flutter/material.dart';
import 'package:flutter_application/data/daftarperlengkapan.dart';

class DetailScreen2 extends StatelessWidget {
  final perlengkapan perlengkapans;

  const DetailScreen2({Key? key, required this.perlengkapans})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(perlengkapans.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                perlengkapans.image,
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            perlengkapans.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.blueAccent),
          ),
          Text('HTM: ${perlengkapans.harga}'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Description : ' + perlengkapans.des,
              maxLines: 15,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
