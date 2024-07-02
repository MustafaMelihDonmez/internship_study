main(){
  
  var welcomeMsg;

  String name = "Melih";

  welcomeMsg = "Welcome $name.";

  print(welcomeMsg);

  int num1 = 10;
  double num2 = 20.4; 

  num result = num2-num1; // ondalıklı sayı ve normal bir sayı arasında işlem yaparken hatalı sonuç verebiliyor!!
  print(result);

  var e = 1.42e5; // e(5) => 10^(5) ile çarp
  print(e);

// NULLABLE, NON-NULLABLE 
  bool isStudent = true; // null olamaz
  bool? a = null; // ? varsa => değişken null olabilir
  String? surname = null;

  int number1;
  int? number2;

  // print(number1); // non-nullable değişkenler kullanılmadan önce değer atanmalıdır
  print(number2); // nullable değişkenlere değer tanımlanmadan kullanılabilir, değerleri otamatik "null" olur

// CONST & FINAL
  const pi = 3.14; // const => compile timeda oluşturuluyor
  // pi = 3; // const değişkenlerin değeri tanımlandıktan sonra değiştirilemez
  final pim = 3.14; // final => run timeda oluşturuluyor
  // pim = 3; // final değişkenlerin değeri tanımlandıktan sonra değiştirilemez

  final time = DateTime.now(); // burada const kullanılamaz, 'DateTime.now()' komutu çalışmadan önce (run time) time değerini belirleyemeyeceği için
  print(time);

}

// LATE
late String lateVar; // late => bir *non-nullable* değişkenin değerinin daha sonra tanımlanabilmesini sağlar 