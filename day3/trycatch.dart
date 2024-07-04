main(){
  
  try {
    dynamic num = 9;
    print("sayı: " + num);
  } catch (e,s) {
    print("hata: " + e.toString());  
    print("hata izi: \n" + s.toString());
  }
  

  String input = "3,14";
  try {
    double number = double.parse(input);
    print("girilen sayının karekökü: " + number.toString());
  } on FormatException catch (e) { // spesifik hataları tespit ederken
    print("yanlış input formatı: " + e.toString());
  } catch (e) {
    print("bir hata oluştu: " + e.toString());
  }

  int num1 = 12;
  int num2 = 0;

  try {
    print(num1%num2);
  } on TypeError catch (e){
    print("type error : " + e.toString());
  }
  catch (e) {
    print("bir hata oluştu: "+ e.toString());
  }


}