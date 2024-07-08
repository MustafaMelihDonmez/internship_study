import 'dart:math';

main() async{
  print("#1 - sqrt(4) -> ${sqrt(4)}");
  print("#2 - multiply(15,10) -> ${15*10}");  
  print("#3 - sum(20,5) -> ${20+5}");
  Future.delayed(const Duration(seconds: 2),
    () => print("#4 - multiply(4,3) -> ${4*3}"));
  print("#5 - difference(20,5) -> ${20-5}");

  print("İşlem bir..");
  await Future.microtask(() { // 7. satırdan sonra olmasına rağmen microtask olduğu için önceliğe sahip (await kullanılmasa da) // async - await kullanıldığı için bir sonraki satıra/işleme geçmeden önce tamamlanması bekleniyor
    var toplam = 0;
    for (var i = 0; i < 4000000000; i++) {
      toplam = toplam + 1;
    }
    print("Geciken işlem bitti ... ");
  });
  print("İşlem üç...");



}