import 'package:flutter/material.dart';
import 'package:flutter_application/data/daftarbunga.dart';
import 'package:flutter_application/data/detailbunga.dart';

class utama extends StatelessWidget {
  const utama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bunga'),
      ),
      body: ListView.builder(
          itemCount: dataBunga.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              bungas: dataBunga[index],
                            )));
              },
              child: Card(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        dataBunga[index].image,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(dataBunga[index].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.blueAccent)),
                      Text('Harga : ${dataBunga[index].harga}'),
                      ClipOval(
                        child: Material(
                          color: Colors.blue,
                          child: InkWell(
                            splashColor: Colors.red,
                            child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Icon(Icons.favorite)),
                            onTap: () {},
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            );
          }),
    );
  }
}
