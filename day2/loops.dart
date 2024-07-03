main(){
// LOOPS
    List<Map<String, dynamic>> list = [
    {'age': 20, 'name': 'Melih', 'city': 'Konya'},
    {'age': 18, 'name': 'Mustafa', 'city': 'Ankara'},
    {'age': 21, 'name': 'Ahmet', 'city': 'Çanakkale'},
    {'age': 19, 'name': 'Mehmet', 'city': 'Antalya'}
  ];

  print("2. öğrencinin adı: ${list[1]['name']} \nYaşadığı şehir: ${list[1]['city']}\n");

// FOR, FOR IN
  for(int i = 0; i<list.length; i++){
    print("${i+1}. öğrencinin adı: ${list[i]['name']}");
    print("${i+1}. öğrencinin yaşadığı şehir: ${list[i]['city']}");
    print("${i+1}. öğrencinin yaşı: ${list[i]['age']}\n");
  }

  for(var elem in list){
    print(elem['name']);
  }

// WHILE, DO WHILE

  int s = 6;

  while(s>0){
    print(s);
    s--;
  }

  do{
    print("sayı: $s");
    s++;
  } while(s<=4);

// SWITCH 
  // var operator = "+";
  // int n1 = 8;
  // int n2 = 5;

  // switch(operator){
  //   case '+': {
  //     print("toplama sonucu: ${n1+n2}");
  //   }
  //   case '-': {
  //     print("çıkarma sonucu: ${n1-n2}");
  //   }
  //   case '*': {
  //     print("çarpma sonucu: ${n1*n2}");
  //   }
  //   case '/': {
  //     print("bölme sonucu: ${n1/n2}");
  //   }
  // }

  calculateTwoNums(9, 6, '-');
  calculateTwoNums(147, 21, '/');

}

calculateTwoNums(int n1, int n2, var operator){
  switch(operator){
    case '+': {
      print("toplama sonucu: ${n1+n2}");
    }
    case '-': {
      print("çıkarma sonucu: ${n1-n2}");
    }
    case '*': {
      print("çarpma sonucu: ${n1*n2}");
    }
    case '/': {
      print("bölme sonucu: ${n1/n2}");
    }
  }
}