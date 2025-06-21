import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(), home: ColorPickerPage());
  }
}

class ColorPickerPage extends StatefulWidget {
  const ColorPickerPage({super.key});

  @override
  State<ColorPickerPage> createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  Color selectedColor = Colors.blue;
  final Map<Color, String> renkler = {
    Colors.red: 'Kırmızı',
    Colors.blue: 'Mavi',
    Colors.green: 'Yeşil',
    Colors.yellow: 'Sarı',
    Colors.orange: 'Turuncu',
    Colors.purple: 'Mor',
    Colors.pink: 'Pembe',
    Colors.brown: 'Kahverengi',
    Colors.grey: 'Gri',
    Colors.black: 'Siyah',
    Colors.white: 'Beyaz',
    Colors.cyan: 'Camgöbeği',
    Colors.lime: 'Limon Yeşili',
    Colors.indigo: 'Çivit Mavisi',
    Colors.teal: 'Deniz Mavisi',
    Colors.amber: 'Kehribar',
    Colors.deepOrange: 'Koyu Turuncu',
    Colors.lightGreen: 'Açık Yeşil',
    Colors.deepPurple: 'Koyu Mor',
    Colors.blueGrey: 'Mavi Gri',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Renk Seçici'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: selectedColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: selectedColor.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text("Mavi"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<Color>(
                  value: selectedColor,
                  items:
                      renkler.entries.map((entry) {
                        return DropdownMenuItem(
                          value: entry.key,
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: entry.key,
                              ),
                              SizedBox(width: 4),
                              Text(entry.value),
                            ],
                          ),
                        );
                      }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedColor = value!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
