import 'package:flutter/material.dart'; // Mengimpor library Flutter untuk pengembangan UI

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi Flutter
}

class MyApp extends StatelessWidget { // Widget utama aplikasi
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { // Memuat tampilan utama aplikasi
    return MaterialApp( // Menginisialisasi aplikasi dengan tema Material
      title: 'My App', // Judul aplikasi
      home: Home(title: 'Percobaan Menggunakan Widget'), // Menampilkan widget Home sebagai halaman utama
      theme: ThemeData( // Mengatur tema aplikasi
        fontFamily: 'JosefinSans', // Mengatur font utama aplikasi
        appBarTheme: const AppBarTheme( // Mengatur tema AppBar
          backgroundColor: Colors.green, // Mengatur warna latar belakang AppBar
        ),
      ),
    );
  }
}

class Home extends StatelessWidget { // Widget untuk halaman utama
  const Home({Key? key, required this.title}) : super(key: key);

  final String title; // Judul halaman

  @override
  Widget build(BuildContext context) { // Memuat tampilan halaman utama
    return Scaffold( // Memuat struktur dasar halaman
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')), // Menampilkan AppBar dengan judul
      body: SingleChildScrollView( // Memungkinkan konten halaman dapat di-scroll
        padding: const EdgeInsets.all(16.0), // Padding untuk konten
        child: Column( // Menyusun konten dalam kolom
          crossAxisAlignment: CrossAxisAlignment.stretch, // Mengatur penyebaran widget secara horizontal
          children: [ // Daftar widget yang akan ditampilkan
            SizedBox( // Widget untuk mengatur jarak vertikal
              height: 20, // Tinggi SizedBox
            ),
            Center( // Widget untuk mengatur penempatan konten ke tengah
              child: Image.asset( // Menampilkan gambar dari aset
                'images/polbeng_logo.png', // Path gambar
                width: 100, // Lebar gambar
                height: 100, // Tinggi gambar
                fit: BoxFit.contain, // Mengatur bagaimana gambar menyesuaikan kotaknya
              ),
            ),
            SizedBox( // Widget untuk mengatur jarak vertikal
              height: 20, // Tinggi SizedBox
            ),
            Container( // Widget untuk mengatur layout
              decoration: BoxDecoration( // Mengatur dekorasi container
                border: Border.all(color: Colors.green), // Mengatur border container
                borderRadius: BorderRadius.circular(5), // Mengatur sudut border
              ),
              padding: EdgeInsets.all(12), // Padding untuk konten dalam container
              child: Column( // Menyusun konten dalam kolom
                crossAxisAlignment: CrossAxisAlignment.start, // Mengatur penyebaran widget secara horizontal
                children: [ // Daftar widget yang akan ditampilkan
                  Text( // Menampilkan teks
                    'Visi', // Isi teks
                    style: TextStyle( // Mengatur gaya teks
                      fontWeight: FontWeight.bold, // Mengatur ketebalan teks
                      fontSize: 16.0, // Mengatur ukuran teks
                    ),
                  ),
                  SizedBox(height: 8.0), // Widget untuk mengatur jarak vertikal
                  Text( // Menampilkan teks
                    'Prodi D4 Rekayasa Perangkat Lunak yang telah ditetapkan oleh Direktur Politeknik Negeri Bengkalis melalui surat keputusan No. 2061/PL31/TU/2016 adalah:', // Isi teks
                    style: TextStyle( // Mengatur gaya teks
                      fontSize: 14.0, // Mengatur ukuran teks
                    ),
                  ),
                  Text( // Menampilkan teks
                    '"Menjadi Program Studi vokasi yang menghasilkan lulusan bidang rekayasa perangkat lunak berstandar Nasional dan menuju reputasi Internasional pada tahun 2020".', // Isi teks
                    style: TextStyle( // Mengatur gaya teks
                      fontWeight: FontWeight.bold, // Mengatur ketebalan teks
                      fontSize: 14.0, // Mengatur ukuran teks
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0), // Widget untuk mengatur jarak vertikal
            Container( // Widget untuk mengatur layout
              decoration: BoxDecoration( // Mengatur dekorasi container
                border: Border.all(color: Colors.green), // Mengatur border container
                borderRadius: BorderRadius.circular(5), // Mengatur sudut border
              ),
              padding: EdgeInsets.all(12), // Padding untuk konten dalam container
              child: Column( // Menyusun konten dalam kolom
                crossAxisAlignment: CrossAxisAlignment.start, // Mengatur penyebaran widget secara horizontal
                children: [ // Daftar widget yang akan ditampilkan
                  Text( // Menampilkan teks
                    'Misi', // Isi teks
                    style: TextStyle( // Mengatur gaya teks
                      fontWeight: FontWeight.bold, // Mengatur ketebalan teks
                      fontSize: 16.0, // Mengatur ukuran teks
                    ),
                  ),
                  SizedBox(height: 8.0), // Widget untuk mengatur jarak vertikal
                  Column( // Menyusun konten dalam kolom
                    crossAxisAlignment: CrossAxisAlignment.start, // Mengatur penyebaran widget secara horizontal
                    children: [ // Daftar widget yang akan ditampilkan
                      _daftarMisi( // Memanggil method untuk menampilkan item misi
                          '1. Menyelenggarakan pendidikan dan meningkatkan kemampuan mahasiswa dalam menerapkan Ilmu Pengetahuan dan Teknologi Rekayasa Perangkat Lunak bidang Rekayasa web dan Aplikasi mobile untuk meningkatkan daya saing yang tinggi.'),
                      _daftarMisi( // Memanggil method untuk menampilkan item misi
                          '2. Menciptakan, mengembangkan dan menerapkan ilmu pengetahuan dan teknologi untuk menghasilkan produk unggulan rekayasa perangkat lunak.'),
                      _daftarMisi( // Memanggil method untuk menampilkan item misi
                          '3. Meningkatkan pemanfaatan teknologi informasi dalam mengatasi permasalahanpermasalahan di lingkungan internal maupun lingkungan eksternal (industri, pemerintah dan masyarakat umum).'),
                      _daftarMisi( // Memanggil method untuk menampilkan item misi
                          '4. Melaksanakan dan mengembangkan desain dan jejaring kerjasama bidang rekayasa perangkat lunak yang berkelanjutan dengan institusi dalam dan luar negeri.'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0), // Widget untuk mengatur jarak vertikal
          ],
        ),
      ),
    );
  }

  Widget _daftarMisi(String text) { // Method untuk membuat item misi
    return Padding( // Widget untuk menambahkan padding pada konten
      padding: EdgeInsets.symmetric(vertical: 2.0), // Padding untuk konten
      child: Text( // Menampilkan teks
        text, // Isi teks
        style: TextStyle( // Mengatur gaya teks
          fontSize: 14.0,
        ),
      ),
    );
  }
}
