import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(239, 255, 255, 255),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Profil',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: const Color.fromRGBO(26, 24, 162, 1),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PictApp(), // Memindahkan widget PictApp ke atas
            SizedBox(height: 20), // Spasi antara gambar dan teks
            Text(
              'Ni Komang Ayu Trisna Dewi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'http://trisna123',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class PictApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40), // Memberikan jarak dari atas layar
          ClipOval(
            child: Image.network(
              'https://raw.githubusercontent.com/trisnadewi1410/Trisna-PersonalWebsite/main/img/FOTO.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}