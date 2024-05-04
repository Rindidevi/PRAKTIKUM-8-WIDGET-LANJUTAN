import 'package:flutter/material.dart';

// Main function untuk menjalankan aplikasi
void main() {
  // Menjalankan aplikasi dengan class MyApp sebagai root widget
  runApp(const MyApp());
}

// Class MyApp adalah StatelessWidget yang merupakan root widget dari aplikasi
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  // Build method untuk membangun UI dari aplikasi
  @override
  Widget build(BuildContext context) {
    // MaterialApp sebagai root widget untuk Material Design
    return MaterialApp(
      // Judul aplikasi
      title: 'Flutter Demo',
      // Tema aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Halaman awal aplikasi menggunakan class Home
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}

// Class Home adalah StatelessWidget yang akan menampilkan halaman utama aplikasi
class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  
  // Properti title untuk judul halaman
  final String title;
  
  // Build method untuk membangun UI dari halaman utama aplikasi
  @override
  Widget build(BuildContext context) {
    // Scaffold sebagai struktur dasar dari halaman dengan AppBar dan body
    return Scaffold(
      // AppBar sebagai baris atas halaman dengan judul
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      // Body halaman, menggunakan Column untuk menata widget secara vertikal
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[ ],
        ),
      ),
    );
  }
}
