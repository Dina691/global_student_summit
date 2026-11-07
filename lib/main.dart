import 'package:flutter/material.dart';
import 'soal3.dart';

void main() {
  runApp(const GlobalSummitApp());
}

class GlobalSummitApp extends StatelessWidget {
  const GlobalSummitApp({super.key});

  // Variabel peserta
  final String namaPeserta = 'Aulia Rachmadina';
  final String nim = '41822110037';
  final String negara = 'Indonesia';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Global Student Summit 2026'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),

        body: Center(
          child: Card(
            elevation: 5,
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.person, size: 60, color: Colors.blue),

                  const SizedBox(height: 15),

                  const Text(
                    'GLOBAL PARTICIPANT CARD',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  const Divider(),

                  Text('Nama Peserta: $namaPeserta'),
                  const SizedBox(height: 10),

                  Text('NIM: $nim'),
                  const SizedBox(height: 10),

                  Text('Negara: $negara'),
                  const SizedBox(height: 20),

                  Builder(
                    builder: (context) {
                      return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Soal3Page(),
                            ),
                          );
                        },
                        child: const Text('Lihat Daftar Peserta Global'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
