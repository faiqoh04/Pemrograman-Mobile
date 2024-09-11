void main(List<String> arguments) {
  // for (int Index = 10; index < 27; index) {
  //   print(Index);
  // }

// langkah 2
  // for (int index = 10; index < 27; index++) {
  //   print(index);

// langkah 3
  // If (Index == 21) break;
  // Else If (index > 1 || index < 7) continue;
  // print(index);

  for (int index = 0; index < 30; index++) {
    if (index == 21)
      break;
    else if (index > 1 && index < 7) continue;
    print(index);
  }
}
