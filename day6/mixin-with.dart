main(){
  var bot1 = ChatBot('114');
  var admin1 = Admin(24.4, "Melih", "Donmez");

  bot1.sendElevatedMessage("beep boop");
  admin1.sendElevatedMessage("this is an admin message");
}

class User {
  final String firstName;
  final String lastName;

  User(this.firstName, this.lastName);
}

class Admin extends User with ElevatedClient {
  final double specialAdminField;

  Admin(this.specialAdminField, super.firstName, super.lastName);
}

class ChatBot with ElevatedClient {
  final String id; 
  
  ChatBot(this.id);
}

mixin ElevatedClient {
  void sendElevatedMessage(String text) {
    print("Sending message.. : $text");
  }
}