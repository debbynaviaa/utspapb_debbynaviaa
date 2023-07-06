import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelipatan 5 - Debby Navia Anggraini',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: KelipatanPage(),
    );
  }
}

class KelipatanPage extends StatefulWidget {
  @override
  _KelipatanPageState createState() => _KelipatanPageState();
}

class _KelipatanPageState extends State<KelipatanPage> {
  int angka = 0;

  void generateNextNumber() {
    setState(() {
      if (angka + 5 <= 30) {
        angka += 5;
      } else {
        angka = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('11 - Debby Navia Anggraini - 20104410069'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bilang Kelipatan 5 dari angka 0-30',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 25),
            Text(
              'Klik button di pojok kanan bawah untuk mendapatkan hasil :',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 25),
            Text( 
              angka.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => generateNextNumber(),
        child: Icon(Icons.add_chart_outlined),
      ),
    );
  }
}