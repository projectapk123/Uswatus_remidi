import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Remidi Mobile Programming Lanjut'),
          backgroundColor: Colors.cyanAccent, // Mengatur warna cyan pada AppBar
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TeksUtama(
                  teks1: '',
                  teks2: 'DAFTAR ABSENSI #113 MOBILE PROGRAMMING LANJUT',
                  isHeader: true, // Menandai sebagai header
                ),
                TeksUtama(
                  teks1: '98. SHABRINA ANGGARDA PARAMITATUNISMONO',
                  teks2: 'STI202102479',
                ),
                TeksUtama(
                  teks1: '99. FAQIH DWI ALFAN',
                  teks2: 'STI202102482',
                ),
                TeksUtama(
                  teks1: '100. RIZMA SABILLAH',
                  teks2: 'STI202102491',
                ),
                TeksUtama(
                  teks1: '101. MUHAMMAD ABDI HAFIDZ',
                  teks2: 'STI202102499',
                ),
                TeksUtama(
                  teks1: '102. JUWITA KRISTIANI HIA',
                  teks2: 'STI202102506',
                ),
                TeksUtama(
                  teks1: '103. USWATUS SANGADAH',
                  teks2: 'STI202102510',
                  backgroundColor: Colors
                      .purpleAccent, // Menambahkan warna latar belakang pink pada teks
                ),
                TeksUtama(
                  teks1: '104. SITI NURFAJAR UTAMI',
                  teks2: 'STI202102529',
                ),
                TeksUtama(
                  teks1: '105. MIFTAKHUL JALAL',
                  teks2: 'STI202102536',
                ),
                TeksUtama(
                  teks1: '106. DANI PANAWAN',
                  teks2: 'STI202102537',
                ),
                TeksUtama(
                  teks1: '107. ACHMAD ZAINI MUZAKI',
                  teks2: 'STI202102538',
                ),
                TeksUtama(
                  teks1: '108. MUHAMMAD WILDAN ZIDNIYALFAQIH',
                  teks2: 'STI202102539',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor; // Menambahkan parameter backgroundColor
  final bool isHeader; // Menambahkan parameter isHeader

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
    this.backgroundColor, // Menambahkan parameter backgroundColor
    this.isHeader = false, // Menambahkan parameter isHeader
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isHeader) {
      // Kondisi untuk header, tidak memberikan box
      return Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 50, // Memberikan tinggi yang sama untuk setiap teks1
            child: Text(
              teks2,
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red, // Mengatur warna teks menjadi merah
              ),
            ),
          ),
        ],
      );
    } else {
      // Kondisi untuk teks utama biasa, memberikan box
      return Container(
        margin: const EdgeInsets.all(8.0), // Memberikan margin antar box
        padding: const EdgeInsets.all(8.0), // Memberikan padding dalam box
        decoration: BoxDecoration(
          color: backgroundColor ??
              Colors.pinkAccent, // Warna latar belakang orange
          border: Border.all(
              color: Colors.black), // Memberikan border hitam pada box
        ),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 50, // Memberikan tinggi yang sama untuk setiap teks1
              child: Text(
                teks1,
                textDirection: TextDirection.ltr,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Mengatur warna teks menjadi hitam
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 30, // Memberikan tinggi yang sama untuk setiap teks2
              child: Text(
                teks2,
                textDirection: TextDirection.ltr,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black, // Mengatur warna teks menjadi hitam
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
