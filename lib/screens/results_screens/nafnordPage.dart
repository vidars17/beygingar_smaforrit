import 'package:bin_smaforrit/code_gen/ord.dart';
import 'package:bin_smaforrit/styles/color_constants.dart';
import 'package:flutter/material.dart';

class NafnordPage extends StatelessWidget {
  static const route = '/no';

  const NafnordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ord = ModalRoute.of(context)!.settings.arguments as Ord;

    var declensionMap = {};

    for (var item in ord.bmyndir) {
      declensionMap[item.g] = item.b;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(ord.ord),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: background,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Eintala",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 2, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("")),
                DataColumn(label: Text("með greini")),
                DataColumn(label: Text("án greini"))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Nf.")),
                  DataCell(Text(declensionMap["NFET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  DataCell(Text(declensionMap["NFETgr"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þf.")),
                  DataCell(Text(declensionMap["ÞFET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  DataCell(Text(declensionMap["ÞFETgr"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þgf.")),
                  DataCell(Text(declensionMap["ÞGFET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  DataCell(Text(declensionMap["ÞGFETgr"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Ef.")),
                  DataCell(Text(declensionMap["EFET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  DataCell(Text(declensionMap["EFETgr"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ])
              ]),
              const Text(
                "Fleirtala",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 2, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("")),
                DataColumn(label: Text("með greini")),
                DataColumn(label: Text("án greini"))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Nf.")),
                  DataCell(Text(declensionMap["NFFT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  DataCell(Text(declensionMap["NFFTgr"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þf.")),
                  DataCell(Text(declensionMap["ÞFFT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  DataCell(Text(declensionMap["ÞFFTgr"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þgf.")),
                  DataCell(Text(declensionMap["ÞGFFT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  DataCell(Text(declensionMap["ÞGFFTgr"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Ef.")),
                  DataCell(Text(declensionMap["EFFT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  DataCell(Text(declensionMap["EFFTgr"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ])
              ])
            ],
          ),
        ));
  }
}
