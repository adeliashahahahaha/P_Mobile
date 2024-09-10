void main() {
  //PRAKTIKUM 1
  // no1
  //   String test = "test2";

  //   if (test == "test1") {
  //     print("Test1");
  //   } else if (test == "test2") {
  //     print("Test2");
  //   } else {
  //     print("Something else");
  //   }

  //   if (test == "test2") {
  //     print("Test2 again");
  //   }
  // }

  // String test = "true";
  // if (test) {
  //    print("Kebenaran");


  //no2
//   String test = "true";
//   if (test == "true") {
//      print("Kebenaran");
//     }
  
  // Praktikum 2
  //no.1
//   int counter = 1;
//   while (counter < 33) {
//   print(counter);
//   counter++;
//   }
  
  //no.2
//   int counter = 70;
//   do {
//   print(counter);
//   counter++;
// } while (counter < 77);
  
  //no.3
//     for (int index = 10; index < 27; index++) {
//     if (index == 21) {
//       break; 
//     } else if (index > 1 || index < 7) {
//       continue; 
//     }
//     print(index); 
//   }
  
  //TUGAS PRAKTIKUM

  String nama = "Adelia Syaharani";
  String nim = "2241760066";
  
  for (int angka = 2; angka <= 201; angka++) {
    if (isPrima(angka)) {
      print("$angka adalah bilangan prima");
      print("Nama: $nama, NIM: $nim");
    }
  }
}
  bool isPrima(int num) {
    if (num < 2) {
      return false;
    }
    for (int i = 2; i <= num ~/ 2; i++) {
      if (num % i == 0) {
        return false;
      }
    }
    return true; 
  }

