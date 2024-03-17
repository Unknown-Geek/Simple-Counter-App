import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          splashColor: Colors.white,
          onPressed: () {
            print(_counter);
            setState(() {
              _counter = 0;
            });
          },
          child: Icon(Icons.undo)),
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: (Colors.purple[200])),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You clicked on the button this many times : ',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      _counter.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 100,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: FloatingActionButton(
                        splashColor: Colors.white30,
                        onPressed: () {
                          setState(() {
                            _counter += 1;
                          });
                        },
                        child: Icon(Icons.add),
                      ),
                    )
                  ]),
            ),
          ],
        )),
      ),
    );
  }
}
