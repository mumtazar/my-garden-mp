import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
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
                'images/logobunga.jpg',
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
            'Lokasi Toko : Jl Cemerlang, Sukabumi',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.green),
          ),
          Text(
            'Kontak Toko : 083119774425',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
