void hitungKelayakan(String nim) {
  int digitNim = int.parse(nim[nim.length - 1]);
  int languageScore = digitNim * 8 + 55;
  int academicScore = digitNim * 6 + 60;
  bool dokumenLengkap = digitNim % 2 == 0;

  // Aturan baru
  if (dokumenLengkap == false) {
    academicScore -= 10;
  }

  String status;

  if (languageScore >= 70 && academicScore >= 65 && dokumenLengkap) {
    status = 'Eligible';
  } else if (languageScore >= 60) {
    status = 'Review';
  } else {
    status = 'Not Eligible';
  }

  print('NIM: $nim');
  print('Language Score: $languageScore');
  print('Academic Score: $academicScore');
  print('Dokumen Lengkap: $dokumenLengkap');
  print('Status: $status');
}

void main() {
  hitungKelayakan('41822110037');
}
