void main(List<String> arguments) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  // Membuat dua set kosong
  var names1 = <String>{};
  Set<String> names2 = {}; // Deklarasi set juga

  // Menambahkan elemen nama dan NIM dengan .add() dan .addAll()
  names1.add('Siti Faiqoh');
  names2.addAll({'Siti Faiqoh', '2241760026'});

  // Mencetak semua set
  print(halogens);
  print(names1);
  print(names2);
}
