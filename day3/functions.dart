main() {
  welcomeMsg("Melih");
  welcomeMsg2("Mustafa\n");

  showStudentInfo("Melih", 20);
  showStudentInfo("Mehmet", 18, "Bolu");

  print(isDivisibleBy(46,4));
  print(isDivisibleBy(91, 13));
}

welcomeMsg(String name) {
  print("Hoşgeldiniz Sayın $name.");
}
welcomeMsg2(String name) => print("Hoşgeldiniz Sayın $name.");

showStudentInfo(String name, int age, [String city = 'Konya']){ // city değeri girilmezse Konya olarak varsayılır
  print("isim: $name\nyaş: $age\nşehir: $city");
}

bool isDivisibleBy(int num, int divisor){
  if(num % divisor == 0){
    return true;
  } else {
    return false;
  }
}