import 'package:bin_smaforrit/code_gen/ordDetail.dart';
import 'package:flutter/material.dart';
import 'package:bin_smaforrit/styles/color_constants.dart';
import 'package:bin_smaforrit/services/bin_api.dart';
import 'package:bin_smaforrit/screens/results_screens/nafnordPage.dart';
import 'package:bin_smaforrit/screens/main_screens/multipleResults.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BeygingarApp',
        theme: ThemeData(),
        home: const HomePage(title: 'BeygingarApp'),
        routes: {
          '/multipleResults': (context) => const MultipleResultsPage(),
          '/no': (context) => const NafnordPage(),
        });
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _searchWord(ord) async {
    var results = await getOrd(ord);
    if (results.contains(RegExp(r'"hluti"'))) {
      //go to screen displaying multiple results from query
      results = "[" + results + "]";
      List<OrdDetail> parsedResults = parseOrdDetail(results);
      Navigator.pushNamed(context, "/multipleResults",
          arguments: parsedResults);
    } else {
      var parsedResults = parseOrd(results);
      var navOfl = parsedResults.ofl;
      Navigator.pushNamed(context, "/$navOfl", arguments: parsedResults);
    }
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
                  child: Text(
                    'BeygingarApp',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 3,
                        fontSize: 20,
                        color: Colors.white),
                  )),
              ListTile(
                leading: const Icon(Icons.link_rounded),
                title: const Text('BÍN vefsíða'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('Fyrirvari'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.code),
                title: const Text('Frumkóði'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: TextField(
              onSubmitted: (String str) {
                _searchWord(str);
              },
              decoration: const InputDecoration(
                suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Icon(Icons.search)),
                border: OutlineInputBorder(),
                labelText: 'Leit í beygingarlýsingu...',
              ),
            ),
          ),
        ));
  }
}
