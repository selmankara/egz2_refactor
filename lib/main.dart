import 'package:egz2_refactor/my_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(TernaryEgzersizi());

class TernaryEgzersizi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String seciliButon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              AltMiUstMu: 'ÜST',
            ),
            MyButton(
              AltMiUstMu: 'ALT',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    seciliButon = ''; /** Sıfırlama **/
                  });
                  print('Sıfırlama yapıldı');
                },
                child: Container(
                  width: 300,
                  height: 50,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'RESET',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
