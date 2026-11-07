import 'package:flutter/material.dart';

List<String> buatDaftarPesertaGlobal(int jumlahPeserta, int digitNim) {
  List<String> negara = ['Indonesia', 'Malaysia', 'Japan', 'Germany', 'Brazil'];

  List<String> daftarPeserta = [];

  for (int i = 0; i < jumlahPeserta; i++) {
    int skor = (i * 13 + digitNim * 7) % 101;

    String status;

    if (skor >= 80) {
      status = 'Accepted';
    } else if (skor >= 65) {
      status = 'Review';
    } else {
      status = 'Rejected';
    }

    String namaNegara = negara[i % negara.length];

    daftarPeserta.add('$namaNegara - skor: $skor - status: $status');
  }

  return daftarPeserta;
}

class Soal3Page extends StatelessWidget {
  const Soal3Page({super.key});

  @override
  Widget build(BuildContext context) {
    final daftarPeserta = buatDaftarPesertaGlobal(10, 7);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Peserta Global'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: daftarPeserta.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(daftarPeserta[index]),
            ),
          );
        },
      ),
    );
  }
}
