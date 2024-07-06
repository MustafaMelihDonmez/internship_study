import 'implements.dart';

main(){
  Shape rect1 = new Rectangle(4, 5);
  rect1.showInfo();
  rect1.draw();
  rect1.showSumOfSides();
  // rect1.showOneSide(); // bu satır hata veriyor çünkü rect1 aslen bir Shape ve Rectangle classına özel methodları kullanamaz. Shape classındaki bütün methodları kullanabilir,
  // ama eğer kullandığı method Rectangle classında override edilmişse o versiyonunu kullanır

  Rectangle rect2 = new Rectangle(6, 4);
  rect2.showOneSide();

  rect2.showInfo();
  rect2.showSumOfSides(); // Rectangle classı Shape classını extend ettiği için otomatik olarak bütün methodlarını da kullanabiliyor

  print("---");
  
  var rect3 = Rectangle(3, 5); // bu şekilde tanımlarken otomatik olarak rect2 gibi tanımlıyor

  createShape(rect1);
  // createShape2(rect1); // ama Shape olarak tanımlayınca parametrede Rectangle istendiğinde hata veriyor

  createShape(rect2);
  createShape2(rect2);
  
}

createShape(Shape shape){
  print("Şekil oluşturuldu..");
  shape.showInfo();
}

createShape2(Rectangle shape){
  print("Şekil oluşturuldu..");
  shape.showInfo();
}

abstract class Shape { // bunu extend eden classlar için şablon görevinde
  final x, y;
  Shape(this.x, this.y);

  get area;
  get perimeter;
  draw(); // abstract classların methodlarının body kısmı olmayabilir

  showInfo(){ // bodysi olan methodları child class bulundurmayabilir
    print("şeklin kenar uzunlukları : $x ve $y");
  }
  showSumOfSides(){
    print(x+y);
  }
}

class Rectangle extends Shape { // her classta sadece bir class extend edilebilir

  Rectangle(super.x, super.y);

  void draw(){
    print("Dikdörtgen çizildi..");
  }
  
  get area => x*y;
  get perimeter => 2*(x+y);

  showInfo() { // ama bodysi olan methodları override edip özelleştirebilir
    // super.showInfo(); // Shape classındaki showInfoyu çalıştırmak için
    print("şeklin kenar uzunlukları : $x ve $y\nalanı: $area\nçevresi: $perimeter");
  }

  showOneSide(){
    print("$x");
  }
}

// class interfaceTest extends Remote { // başka kütüphaneden extend edilemez -> interface keyword

// }

class interfaceTest2 implements Remote { // ama implement edilebilir
  void volumeUp() {

  }
  void volumeDown() {

  }
  void test() {

  }
}