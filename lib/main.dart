// Herdi Andra Fata Rizqi
// 123210005
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _showImage(String src) {
    return Container(
        height: 200,
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(src));
  }

  Widget _listItem(String imgSource) {
    return Column(
      children: [
        _showImage(imgSource),
        Container(
          width: 150,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'How Many Food?',
            ),
          ),
        ),
        _button("Donate")
      ],
    );
  }
  
  Widget _button(String text) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10.0),
          ),
        ),
        child: Text(text));
  }
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Pertemuan 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cat Food Donation"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          toolbarHeight: 100,
        ),
        body: SingleChildScrollView(
          child: Container(
            // color: Colors.lightBlue,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: 'Insert Cat Name',
                      labelText: 'Search Cat'),
                ),
                Container(
                    padding: EdgeInsets.all(8.0),
                    child: _button("Search"),
                ),
                _listItem('assets/fresh.jpg'),
                _listItem('assets/sleep.png'),
                _listItem('assets/shock.png'),
                _listItem('assets/snack.png'),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          child: Text("Herdi Andra Fata R / 123210005"),
        ),
      ),
    );
  }
}
