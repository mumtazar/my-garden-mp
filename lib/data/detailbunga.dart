import 'package:flutter/material.dart';
import 'package:flutter_application/data/daftarbunga.dart';

class DetailScreen extends StatelessWidget {
  final bunga bungas;

  const DetailScreen({Key? key, required this.bungas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bungas.name),
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
                bungas.image,
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
            bungas.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.blueAccent),
          ),
          Text('HTM: ${bungas.harga}'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Description : ' + bungas.des,
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
