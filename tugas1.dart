import 'dart:io';

void main() {
  // Meminta input dari user
  print("Masukkan jumlah elemen:");
  int n = int.parse(stdin.readLineSync()!);

  List<double> numbers = [];

  // Input elemen-elemen
  for (int i = 0; i < n; i++) {
    print("Masukkan elemen ke-${i + 1}:");
    double element = double.parse(stdin.readLineSync()!);
    numbers.add(element);
  }

  // Mencari median
  double median = findMedian(numbers);

  print("Median dari daftar adalah: $median");
}

double findMedian(List<double> numbers) {
  // Mengurutkan daftar angka
  numbers.sort();

  int length = numbers.length;
  
  // Jika jumlah elemen ganjil, ambil elemen di tengah
  if (length % 2 != 0) {
    return numbers[length ~/ 2];
  } 
  // Jika jumlah elemen genap, ambil rata-rata dari dua elemen di tengah
  else {
    int midIndex = length ~/ 2;
    return (numbers[midIndex - 1] + numbers[midIndex]) / 2;
  }
}
