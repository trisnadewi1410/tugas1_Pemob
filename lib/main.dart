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
            child: Text('Profil',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: const Color.fromRGBO(26, 24, 162, 1),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PictApp(), 
              SizedBox(height: 20), 
              Text(
                'Ni Komang Ayu Trisna Dewi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'ayu.trisna.dewi@student.undiksha.ac.id',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              SizedBox(height: 60), 
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildInfoCard(Icons.location_on, 'Alamat', 'Perumahan Liligundi'),
                      _buildInfoCard(Icons.home, 'Asal', 'Karangasem, Bali')
                    ],
                  ),
                  SizedBox(height: 30), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildInfoCard(Icons.school, 'Universitas', 'Universitas Pendidikan Ganesha'),
                      _buildInfoCard(Icons.emoji_events, 'Sertifikat', 'Sertifikat Lomba'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(IconData icon, String title, String subtitle) {
    return Container(
      width: 150,
      height: 150, 
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue[50], 
        border: Border.all(color: Colors.blue, width: 2), 
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.blue),
          SizedBox(height: 5),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(subtitle, style: TextStyle(color: Colors.blue)),
        ],
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
          SizedBox(height: 30),
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
