main(){

  var t1 = Television();
  t1.volumeDown();

}

abstract interface class Remote { // extends.dart ın sonundaki interfaceTest classı "interface" keywordu olduğundan *farklı bir kütüphandeden olduğu için* Remote classını extend edemiyor
  void volumeUp(){
    print("Kumandadan ses arttırılıyor..");
  }

  void volumeDown(){
    print("Kumandadan ses azaltılıyor..");
  }

  void test(); // abstract keywordu olduğundan bodysiz methodlara sahip olabilir
}
// abstract interface class -> en çok kullanılan hali (javadaki gibi); başka kütüphanelerdeki classlar sadece implement edilebilir, extend edilemez ve methodları bodysiz olabilir

class Television implements Remote, AnotherClass{ // birden fazla class implement edilebilir
  void volumeUp(){
    print("Telelvizyonun sesi azaltılıyor..");

  }
  void volumeDown(){
    print("Televizyonun sesi arttırılıyor..");
  }

  void randomMethod(){
    print("b");
  }

  void test() {
    print("testing..");
  }
}

class AnotherClass extends Remote { // bu classın extend etmesi sorun çıkartmıyor çünkü Remote classıyla aynı kütüphanedeler
  void randomMethod(){
    print("a");
  }
  void volumeUp() {

  }
  void volumeDown() {

  }
  void test() {

  }
}