main() {
// MAPS
  Map<String, dynamic> book = {
    'author': 'Dostoyevski',
    'name': 'Suç ve Ceza',
    'year': 1866,
  };

  print("kitabın yazarı: ${book['author']}\n");

  List<Map<String, dynamic>> list = [
    {'age': 20, 'name': 'Melih', 'city': 'Konya'},
    {'age': 18, 'name': 'Mustafa', 'city': 'Ankara'},
    {'age': 21, 'name': 'Ahmet', 'city': 'Çanakkale'},
    {'age': 19, 'name': 'Mehmet', 'city': 'Antalya'}
  ];

  print("2. öğrencinin adı: ${list[1]['name']} \nYaşadığı şehir: ${list[1]['city']}\n");


  Map<String, int> fruitCounts = {
    'elma': 15,
    'kivi': 7,
    'portakal': 9
  };
  fruitCounts.putIfAbsent('kivi', () => 21); // varsa değeri değiştirmiyor
  fruitCounts.putIfAbsent('şeftali', () => 17);
  print(fruitCounts);

}
