import 'package:flutter/material.dart';
import 'profil_card.dart';
import 'layout_demo.dart';
import 'profil.dart';
void main() {
  runApp(MyApp());
}

// MyApp = widget root aplikasi
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 theme: ThemeData(
 useMaterial3: true,
 colorScheme: ColorScheme.fromSeed(
 seedColor: Colors.red,
 brightness: Brightness.light,
 ),
 ),
 // DARK THEME
 darkTheme: ThemeData(
 useMaterial3: true,
 colorScheme: ColorScheme.fromSeed(
 seedColor: Colors.blue,
 brightness: Brightness.dark,
 ),
 ),
 // Mode: system = ikuti pengaturan HP
 themeMode: ThemeMode.system,
 home: ProfilPage(),
);

 }
}

// STATEFULWIDGET = Widget yang datanya BISA BERUBAH
class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

// State = tempat menyimpan data yang bisa berubah
class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  // Tambah
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  // Kurang
  void _decrement() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Demo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Anda menekan tombol sebanyak:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: _decrement,
              child: Icon(Icons.remove),
              heroTag: 'decrement',
            ),
            FloatingActionButton(
              onPressed: _increment,
              child: Icon(Icons.add),
              heroTag: 'increment',
            ),
          ],
        ),
      ),
    );
  }
}