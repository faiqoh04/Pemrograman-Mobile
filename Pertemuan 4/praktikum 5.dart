// void main(List<String> arguments) {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);

//   (int, int) tukar((int, int) record) {
//     var (a, b) = record;
//     return (b, a);
//   }
// }

// Fungsi tukar untuk menukar nilai dalam tuple
(int, int) tukar((int, int) record) {
  var (a, b) = record; // Mengambil nilai a dan b dari record
  return (b, a); // Mengembalikan nilai b dan a dalam urutan yang terbalik
}

void main(List<String> arguments) {
  var record = (1, 2); // Menggunakan tuple (int, int) yang sesuai
  print('Record awal: $record');

  // Menggunakan fungsi tukar untuk menukar nilai
  var result = tukar(record);
  print('Hasil pertukaran: $result'); // Menampilkan hasil pertukaran

  // Menampilkan record asli dengan nilai awal
  var originalRecord = ('first', a: 2, b: true, 'last');
  print('Record asli: $originalRecord');

  // Record type annotation in a variable declaration
  (String, String) mahasiswa; // Deklarasi variabel mahasiswa
  mahasiswa = ('Siti Faiqoh', '2241760026'); // Inisialisasi dengan nama dan NIM
  print('Record mahasiswa: $mahasiswa'); // Menampilkan record mahasiswa

  // var mahasiswa2 = ('first', a: 2, b: true, 'last');
  var mahasiswa2 = ('Siti Faiqoh / 2241760026', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
