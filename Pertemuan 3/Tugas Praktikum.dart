// void main() {
//   // Nama dan NIM
//   String nama = "Siti Faiqoh";
//   String nim = "2241760026";

//   // Menampilkan bilangan prima dari 0 hingga 201 / loop
//   for (int i = 0; i <= 201; i++) {
//     if (isPrime(i) == 1) {
//       // Jika fungsi mengembalikan 1, berarti bilangan prima
//       print("$i (bilangan prima) ");
//       print("Nama: $nama, NIM: $nim");
//     }
//   }
// }

// // Fungsi untuk memeriksa apakah sebuah bilangan adalah bilangan prima
// int isPrime(int number) {
//   if (number <= 1) {
//     return 0; // 0 berarti bukan prima
//   }
//   for (int i = 2; i <= number ~/ 2; i++) {
//     if (number % i == 0) {
//       return 0; // 0 berarti bukan prima
//     }
//   }
//   return 1; // 1 berarti bilangan prima
// }

void main() {
  // Nama dan NIM
  String info = "Nama: Siti Faiqoh, NIM: 2241760026";

  // Menampilkan bilangan prima dari 0 hingga 201
  for (int i = 2; i <= 201; i++) {
    if (isPrime(i) == 1) {
      print("$i (bilangan prima) - $info");
    }
  }
}

// Fungsi untuk memeriksa apakah sebuah bilangan adalah bilangan prima
int isPrime(int number) {
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return 0; // Jika habis dibagi, bukan bilangan prima
    }
  }
  return 1; // Jika tidak habis dibagi angka lain, bilangan prima
}
