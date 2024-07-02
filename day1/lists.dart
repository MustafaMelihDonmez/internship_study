main(){
// LISTS
  var scores = [9, 4, 6, 5, 4]; // List<int> => sadecce int değerler alır
  print(scores);
  scores.add(10);
  print(scores);
  // scores.add("asd"); // list oluşturulurken sadece int değerler olduğundan List<int> oldu ve artık sadece int değerler alabilir

  var grades = [78, 21, "C+", 52, "A-"]; // List<Object> => her tür değeri kapsayan bir liste
  print(grades);

  grades.add(73.2);
  print(grades);

  grades.remove(21);
  print(grades);

  grades.removeLast();
  print(grades);

  print(grades.removeAt(1));
  print(grades.length);

  grades.addAll([23,67,"B+", 45.4]);
  print(grades);
  print(grades.indexOf("A-"));

  grades.shuffle();
  print(grades);

// SETS => 'List'ten farklı olarak her eleman tektir, duplicate bulunmaz
// ayrıca setlerde index kullanılarak işlem yapılmaz (removeAt, indexOf gibi)
  var fruits = {"apple", "grapes", "orange", "plum"}; // Set<String>

  print(fruits);
  fruits.add("apple");
  print(fruits);
  
}