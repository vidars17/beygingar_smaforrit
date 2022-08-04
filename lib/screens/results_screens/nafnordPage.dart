import 'package:bin_smaforrit/code_gen/ord.dart';
import 'package:bin_smaforrit/styles/color_constants.dart';
import 'package:flutter/material.dart';

class NafnordPage extends StatelessWidget {

  static const route = '/no';

  @override
  Widget build(BuildContext context) {

    final ord = ModalRoute.of(context)!.settings.arguments as Ord;

    var declensionMap  = {};

    for (var item in ord.bmyndir) {
      declensionMap[item.g] = item.b;
    }


    return Scaffold(
      appBar: AppBar(
        title: Text(ord.ord),
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
          Navigator.pop(context);
        },),
        backgroundColor: background,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            const Text(
              "Eintala",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, height:2, fontSize: 17),
            ),
            DataTable(
                columnSpacing: 0,
                columns: const <DataColumn>[
                  DataColumn(

                      label: Text("")),
                  DataColumn(
                      label: Text("með greini")),
                  DataColumn(
                      label: Text("án greini"))
                ],
                rows: <DataRow>[
                  DataRow(
                      cells: <DataCell>[
                        const DataCell(Text("Nf.")),
                        DataCell(Text(declensionMap["NFET"] ?? "--")),
                        DataCell(Text(declensionMap["NFETgr"] ?? "--"))
                      ]
                  ),DataRow(
                      cells: <DataCell>[
                        const DataCell(Text("Þf.")),
                        DataCell(Text(declensionMap["ÞFET"] ?? "--")),
                        DataCell(Text(declensionMap["ÞFETgr"] ?? "--"))
                      ]
                  ),DataRow(
                      cells: <DataCell>[
                        const DataCell(Text("Þgf.")),
                        DataCell(Text(declensionMap["ÞGFET"] ?? "--")),
                        DataCell(Text(declensionMap["ÞGFETgr"] ?? "--"))
                      ]
                  ),DataRow(
                      cells: <DataCell>[
                        const DataCell(Text("Ef.")),
                        DataCell(Text(declensionMap["EFET"] ?? "--")),
                        DataCell(Text(declensionMap["EFETgr"] ?? "--"))
                      ]
                  )
                ]


            ),
            const Text(
              "Fleirtala",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 17),
            ),
            DataTable(
                columnSpacing: 0,
                columns: const <DataColumn>[
                  DataColumn(

                      label: Text("")),
                  DataColumn(
                      label: Text("með greini")),
                  DataColumn(
                      label: Text("án greini"))
                ],
                rows: <DataRow>[
                  DataRow(
                      cells: <DataCell>[
                        const DataCell(Text("Nf.")),
                        DataCell(Text(declensionMap["NFFT"] ?? "--")),
                        DataCell(Text(declensionMap["NFFTgr"] ?? "--"))
                      ]
                  ),DataRow(
                      cells: <DataCell>[
                        const DataCell(Text("Þf.")),
                        DataCell(Text(declensionMap["ÞFFT"] ?? "--")),
                        DataCell(Text(declensionMap["ÞFFTgr"] ?? "--"))
                      ]
                  ),DataRow(
                      cells: <DataCell>[
                        const DataCell(Text("Þgf.")),
                        DataCell(Text(declensionMap["ÞGFFT"] ?? "--")),
                        DataCell(Text(declensionMap["ÞGFFTgr"] ?? "--"))
                      ]
                  ),DataRow(
                      cells: <DataCell>[
                        const DataCell(Text("Ef.")),
                        DataCell(Text(declensionMap["EFFT"] ?? "--")),
                        DataCell(Text(declensionMap["EFFTgr"] ?? "--"))
                      ]
                  )
                ]


            )
          ],
        ),
      )
    );


  }
}