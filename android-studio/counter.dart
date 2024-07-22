import 'package:flutter/material.dart';

void main(){
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {

  @override
  State<CounterApp> createState() => _CounterAppState();

}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();//   @override
//   void initState() {
//     super.initState();
//     print("initState");
//   }
//
//   @override
//   void setState(VoidCallback fn) {
//     super.setState(fn);
//     print("setState");
//   }
//
//   @override
//   void didChangeDependencies() {
//     print("didChangeDependencies $context");
//     super.didChangeDependencies();
//   }
//
// @override
//   void didUpdateWidget(covariant MainPage oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     print("didUpdateWidget");
//   }
//
// @override
//   void deactivate() {
//     super.deactivate();
//     print("deactivate");
//   }
//
//   @override
//   void activate() {
//     super.activate();
//     print("activate");
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     print("dispose");
//     // showDialog(context: context, builder: (context) => Dialog());
//   }

}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      if(state==AppLifecycleState.resumed){ print("Lifecycle: Resumed");}
      if(state==AppLifecycleState.paused){ print("Lifecycle: Paused");}
    });
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  int _counter = 0;
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(),
        child: Text("Arttır"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            _buildContainer2(100, 200, Colors.brown.shade300, "Butona $_counter defa basıldı."),
            TextButton(
                onPressed: (){
                  setState(() {
                    _counter=0;
                  });
                },
                child: Text("RESET",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red))
            )
          ],
        ),
      ),
    );
  }
}


Widget _buildContainer2(double height, double width, Color color, String text) {

  return Container(
    height: height,
    width: width,
    color: color,
    child: Text(text),
    alignment: Alignment.center,
  );
}