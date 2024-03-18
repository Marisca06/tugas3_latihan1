import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewWithCards(),
    );
  }
}

class ListViewWithCards extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      "nama": "Marisca Amanda Hidayat",
      "hobi": "Berenang",
      "image": "images/foto1.jpg",
    },
    {
      "nama": "Fidyah Salsabila Putri",
      "hobi": "Menonton Film",
      "image": "images/foto2.jpg",
    },
    {
      "nama": "Raihana Sakhi Aswanda",
      "hobi": "Memasak",
      "image": "images/foto3.jpg",
    },
    {
      "nama": "Nurul Izzah",
      "hobi": "Menggambar",
      "image": "images/foto4.jpg",
    },
    {
      "nama": "Cynthia Widya Lestari",
      "hobi": "Menonton Film",
      "image": "images/foto5.jpg",
    },
    {
      "nama": "Puti Tsabita Najwa",
      "hobi": "Olahraga",
      "image": "images/foto6.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: ClipRect(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    data[index]['image'] ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(data[index]['nama'] ?? ''),
              subtitle: Text(data[index]['hobi'] ?? ''),
            ),
          );
        },
      ),
    );
  }
}
