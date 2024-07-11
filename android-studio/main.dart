import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        title: Text("Flutter App", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => {},
        ),
        backgroundColor: Colors.teal.shade300,
        elevation: 5, // app barın altındaki gölge
        iconTheme: IconThemeData(color: Colors.deepPurpleAccent.shade400, opacity: 0.3, size: 32),
        leadingWidth: 10,
        scrolledUnderElevation: 10, // ekran kaydırılırken appbarın altında oluşan gölge
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage())),
                  child: Text(
                    "new page",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(120.0, 50.0),
                      ),
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)
                          )
                      )
                  ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 250,
                color: Colors.blueGrey.shade700,
                alignment: Alignment.center,
                child: Text("<- Diğer sayfaya geçmek için tıkla", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("AAAAA"),
                    subtitle: Text("BBBB"),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text("tıkla")
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        // automaticallyImplyLeading: false, // önceki sayfaya dönme butonu
      ),
    );
  }
}