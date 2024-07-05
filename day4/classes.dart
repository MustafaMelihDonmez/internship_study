import '../day3/functions.dart';

main() {
  var noodles = MenuItem('veg noodles', 9.99);
  var manti = MenuItem.withTitle(
      'Kayseri mantı'); // named olanları kullanırken bu şekilde

  print(noodles.format());
  print(manti.format());

  Student s1 = new Student("Melih", 0, 1123);
  s1.success = 5; // setter
  print(s1.success); // getter
  s1.showStudentInfo();
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title,
      this.price); // constructor, sadece 1 tane isimsiz constructor olabilir

  MenuItem.withTitle(this.title) : price = 0; // named constructor

  MenuItem.withPrice(this.price) : title = ""; // named constructor

  String format() {
    return ("$title --> $price");
  }
}

class Student {
  String name;
  int percent;
  int _stNo; // private --> _

  Student(this.name, this.percent, this._stNo);

  showStudentInfo() {
    print("Öğrenci bilgileri: \nisim: $name\nyüzde: $percent\nöğrenci no: $_stNo");
  }

  set success(int grade) {
    if (grade > 10) {
      grade = 10;
    } else if (grade < 0) {
      grade = 0;
    }
    percent = grade * 10;
  }

  int get success {
    return percent;
  }
}
