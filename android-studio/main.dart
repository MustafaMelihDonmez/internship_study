import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Not:
// Navigator.pushReplacement() kullanınca geri dönme butonu görünmez

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
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('bottom sheet'),
                ElevatedButton(
                  child: Text('Close'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header', style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Second Page'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Third Page'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Flutter App", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.teal.shade300,
        elevation: 5, // app barın altındaki gölge
        iconTheme: IconThemeData(color: Colors.deepPurpleAccent.shade400, opacity: 0.3, size: 32),
        scrolledUnderElevation: 10, // ekran kaydırılırken appbarın altında oluşan gölge
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _showModalBottomSheet(context),
          label: Text("Show Bottom Sheet")
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
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
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        actions: [
          CircleAvatar(
            foregroundImage: NetworkImage("https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg"),
          )
        ],
        // automaticallyImplyLeading: false, // önceki sayfaya dönme butonu
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrangeAccent.shade200,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            if(_selectedIndex == 0){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
            } else if(_selectedIndex == 1){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            }
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Ara"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Ana Sayfa"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: "Test"
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SizedBox(
              height: 100,
              child: ListView(
                // physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.fromLTRB(100,0,100,0),
                children: [
                  _buildContainer(30, 20, Colors.grey.shade600, "1"),
                  _buildContainer(30, 20, Colors.grey.shade500, "2"),
                  _buildContainer(30, 20, Colors.grey.shade400, "3"),
                  _buildContainer(30, 20, Colors.grey.shade300, "4"),
                  _buildContainer(30, 20, Colors.grey.shade200, "5")
                ],
              ),
            ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text("Item ${index}"),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  Color _bgColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      appBar: AppBar(
        title: Text('Third Page'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            DropdownMenu(
                onSelected: (color){
                  if(color!=null) {
                    setState(() {
                      _bgColor = color;
                    });
                  }
                },
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: Colors.red, label: "kırmızı"),
                  DropdownMenuEntry(value: Colors.green, label: "yeşil"),
                  DropdownMenuEntry(value: Colors.blue, label: "mavi"),
                  DropdownMenuEntry(value: Colors.yellow, label: "sarı"),
            ]),
          ],
        ),
      ),
    );
  }
}

Widget _buildContainer(double height, double width, Color color, String text) {
  return Container(
    height: height,
    width: width,
    color: color,
    child: Text(text),
    alignment: Alignment.center,
  );
}