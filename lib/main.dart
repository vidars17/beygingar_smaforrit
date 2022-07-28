import 'package:flutter/material.dart';
import 'package:bin_smaforrit/styles/color_constants.dart';
import 'package:bin_smaforrit/services/bin_api.dart';

void main() => runApp( const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BÍN',
      theme: ThemeData(
      ),
      home: const HomePage(title: 'BÍN'),
    );

  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _printInflection(ord) async {
    var results = await getOrd(ord);
    print(results.bmyndir[0].g);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: background,
              ),
                child: Text('BÍN')
            ),
            ListTile(
              title: const Text('BÍN vefsíða'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Fyrirvari'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: TextField(
            onSubmitted: (String str) {
              _printInflection(str);
            },
            decoration: const InputDecoration(
              suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Icon( Icons.search)
              ),
              border: OutlineInputBorder(),
              labelText: 'Leit í beygingarlýsingu...',

            ),
          ),
        ),
      )

    );
  }
}
