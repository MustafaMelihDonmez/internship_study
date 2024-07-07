main(){
  final x = "merhaba".duplicate();
  print(x);

  final y = "selam".seperated;
  print(y);

  dynamic welcomeMsg = "Hoşgeldiniz sayın ";

  dynamic nameInput = "Melih";

  if(nameInput is String){ // is -> check type
    String welcomeText = (welcomeMsg as String) + nameInput; // as -> type cast

    print(welcomeText.seperated);
  }
}

extension StringOperations on String {
  String duplicate() {
    return this + this;
  }

  String get seperated {
    String temp = "";
    for(int i=0;i<this.length;i++){
      temp += this[i] + " ";
    }
    return temp.substring(0,temp.length-1);
  }
}