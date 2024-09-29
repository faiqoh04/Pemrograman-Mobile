void main(List<String> arguments) {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // List tipe dynamic agar dapat menampung berbagai tipe data
  final List<dynamic> list = List.filled(5, null);

  // Isi nama dan NIM di indeks 1 dan 2
  list[1] = 'Siti Faiqoh';
  list[2] = '2241760026';

  // Print panjang list dan elemen pada indeks 1 dan 2
  print('Panjang list: ${list.length}');
  print('Elemen pada indeks 1: ${list[1]}');
  print('Elemen pada indeks 2: ${list[2]}');

  // Cetak seluruh list
  print('Isi list: $list');
}
