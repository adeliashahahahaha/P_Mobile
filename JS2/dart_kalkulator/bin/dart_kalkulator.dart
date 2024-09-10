import 'package:dart_kalkulator/dart_kalkulator.dart' as dart_kalkulator;

import 'dart:io';

void main() {
  int jmlsmt = 0, jmlmk = 0; // Inisialisasi variabel
  int jumlahnilai, jumlahsks, totalsks = 0;
  List<List<int>> sks = List.generate(50, (_) => List.filled(30, 0));
  List<int> skssmt = List.filled(14, 0);
  List<List<String?>> nilaihuruf = List.generate(50, (_) => List.filled(30, null));
  List<List<String?>> matkul = List.generate(50, (_) => List.filled(50, null));
  List<double> nr = List.filled(14, 0);
  double totalnr = 0, ipk;

  print("==============================================");
  print("\tProgram Menghitung IPK Mahasiswa");
  print("==============================================");

  try {
    stdout.write("Masukkan jumlah semester: ");
    String? input = stdin.readLineSync();
    if (input != null) {
      jmlsmt = int.parse(input);
      if (jmlsmt < 2 || jmlsmt > 14) {
        print("Jumlah semester salah!");
        return;
      } else {
        for (int i = 0; i < jmlsmt; i++) {
          jumlahnilai = 0;
          jumlahsks = 0;

          stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
          input = stdin.readLineSync();
          if (input != null) {
            jmlmk = int.parse(input);
            if (jmlmk < 2) {
              print("Jumlah matakuliah kurang dari 2 setiap semester");
              return;
            } else {
              for (int j = 0; j < jmlmk; j++) {
                stdout.write("Masukkan mata kuliah ke ${j + 1}\n");
                stdout.write("Masukkan nama matkul: ");
                matkul[i][j] = stdin.readLineSync();
                stdout.write("Masukkan jumlah sks matkul: ");
                input = stdin.readLineSync();
                if (input != null) {
                  sks[i][j] = int.parse(input);
                }
                stdout.write("Masukkan nilai matkul (A/B/C/D/E): ");
                nilaihuruf[i][j] = stdin.readLineSync();
                print("--------------------------------------------");

                int nilai = 0;
                if (nilaihuruf[i][j] == 'A') {
                  nilai = 4 * sks[i][j];
                } else if (nilaihuruf[i][j] == 'B') {
                  nilai = 3 * sks[i][j];
                } else if (nilaihuruf[i][j] == 'C') {
                  nilai = 2 * sks[i][j];
                } else if (nilaihuruf[i][j] == 'D') {
                  nilai = 1 * sks[i][j];
                } else if (nilaihuruf[i][j] == 'E') {
                  nilai = 0 * sks[i][j];
                } else {
                  print("Input nilai salah!");
                  return;
                }

                jumlahnilai += nilai;
                jumlahsks += sks[i][j];
              }

              if (jumlahsks > 24) {
                print("Jumlah SKS semester lebih dari 24");
                return;
              } else {
                skssmt[i] = jumlahsks;
                nr[i] = jumlahnilai / jumlahsks;
              }
            }
          }
        }
      }
    }
  } catch (e) {
    print("Terjadi kesalahan: $e");
    return;
  }

  print("==============================================");
  print("\t\tTranskrip Nilai");
  print("==============================================");

  for (int i = 0; i < jmlsmt; i++) {
    print("\nHasil Semester ${i + 1}:");
    print("Mata Kuliah         SKS        Nilai");

    for (int j = 0; j < jmlmk; j++) {
      String mataKuliah = matkul[i][j] ?? '';
      String nilaiHuruf = nilaihuruf[i][j] ?? '';
      int sksMataKuliah = sks[i][j];

      print("$mataKuliah${sksMataKuliah.toString().padRight(10)}$nilaiHuruf");
    }

    print("\nSKS\t: ${skssmt[i]}");
    print("NR\t: ${nr[i].toStringAsFixed(2)}");
    totalsks += skssmt[i];
    totalnr += nr[i];
    print("--------------------------------------------");
  }

  ipk = totalnr / jmlsmt;
  print("\nTotal SKS\t: $totalsks");
  print("IPK\t\t: ${ipk.toStringAsFixed(2)}");
  print("==============================================");
}
