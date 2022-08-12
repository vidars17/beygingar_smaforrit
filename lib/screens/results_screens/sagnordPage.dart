import 'package:bin_smaforrit/code_gen/ord.dart';
import 'package:bin_smaforrit/styles/color_constants.dart';
import 'package:flutter/material.dart';

class SagnordPage extends StatelessWidget {
  static const route = '/so';

  const SagnordPage({Key? key}) : super(key: key);

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
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: " " + ord.ord,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 2,
                        color: Colors.black,
                        fontSize: 20)),
                TextSpan(
                    text: " " + declensionMap['GM-FH-ÞT-1P-ET'],
                    style: const TextStyle(color: Colors.blue, fontSize: 14)),
                TextSpan(
                    text: " " + declensionMap['GM-FH-ÞT-1P-FT'],
                    style: const TextStyle(color: Colors.blue, fontSize: 14)),
                TextSpan(
                    text: " " + declensionMap['GM-VH-NT-2P-FT'],
                    style: const TextStyle(color: Colors.blue, fontSize: 14)),
                const TextSpan(
                    text: ", sagnorð",
                    style: TextStyle(color: Colors.orange, fontSize: 14)),
              ])),
              const Divider(
                thickness: 1,
                height: 10,
                endIndent: 200,
              ),
              //---------------------------------------------------------------------------------------------//
              const Text(
                "Germynd",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 2,
                    fontSize: 18,
                    color: Colors.black54),
              ),
              const Text(
                "Nafnháttur",
                style:
                    TextStyle(height: 1, fontSize: 15, color: Colors.black87),
              ),
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: "að",
                    style: TextStyle(color: Colors.black87, fontSize: 14)),
                TextSpan(
                    text: " " + declensionMap['GM-NH'],
                    style: const TextStyle(color: Colors.blue, fontSize: 14))
              ])),
              //---------------------------------------------------------------------------------------------//
              const Text(
                "Persónuleg notkun",
                style: TextStyle(
                    height: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const Text(
                "Framsöguháttur",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("ég")),
                  DataCell(Text(
                    declensionMap["GM-FH-NT-1P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("við")),
                  DataCell(Text(declensionMap["GM-FH-NT-1P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  const DataCell(Text("þú")),
                  DataCell(Text(declensionMap["GM-FH-NT-2P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þið")),
                  DataCell(Text(declensionMap["GM-FH-NT-2P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("3. pers.")),
                  const DataCell(Text("hann\nhún\nþað")),
                  DataCell(Text(declensionMap["GM-FH-NT-3P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þeir\nþær\nþau")),
                  DataCell(Text(declensionMap["GM-FH-NT-3P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ])
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("ég")),
                  DataCell(Text(
                    declensionMap["GM-FH-ÞT-1P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("við")),
                  DataCell(Text(declensionMap["GM-FH-ÞT-1P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  const DataCell(Text("þú")),
                  DataCell(Text(declensionMap["GM-FH-ÞT-2P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þið")),
                  DataCell(Text(declensionMap["GM-FH-ÞT-2P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("3. pers.")),
                  const DataCell(Text("hann\nhún\nþað")),
                  DataCell(Text(declensionMap["GM-FH-ÞT-3P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þeir\nþær\nþau")),
                  DataCell(Text(declensionMap["GM-FH-ÞT-3P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                ])
              ]),
              //---------------------------------------------------------------------------------------------//
              const Text(
                "Viðtengingarháttur",
                style:
                    TextStyle(color: Colors.black87, fontSize: 17, height: 3),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("ég")),
                  DataCell(Text(
                    declensionMap["GM-VH-NT-1P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("við")),
                  DataCell(Text(declensionMap["GM-VH-NT-1P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  const DataCell(Text("þú")),
                  DataCell(Text(declensionMap["GM-VH-NT-2P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þið")),
                  DataCell(Text(declensionMap["GM-VH-NT-2P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("3. pers.")),
                  const DataCell(Text("hann\nhún\nþað")),
                  DataCell(Text(declensionMap["GM-VH-NT-3P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þeir\nþær\nþau")),
                  DataCell(Text(declensionMap["GM-VH-NT-3P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ])
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("ég")),
                  DataCell(Text(
                    declensionMap["GM-VH-ÞT-1P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("við")),
                  DataCell(Text(declensionMap["GM-VH-ÞT-1P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  const DataCell(Text("þú")),
                  DataCell(Text(declensionMap["GM-VH-ÞT-2P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þið")),
                  DataCell(Text(declensionMap["GM-VH-ÞT-2P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("3. pers.")),
                  const DataCell(Text("hann\nhún\nþað")),
                  DataCell(Text(declensionMap["GM-VH-ÞT-3P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þeir\nþær\nþau")),
                  DataCell(Text(declensionMap["GM-VH-ÞT-3P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                ])
              ]),
              //---------------------------------------------------------------------------------------------//
              const Text(
                "Ópersónuleg notkun - (Frumlag í þágufalli)",
                style: TextStyle(
                    height: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const Text(
                "Framsöguháttur",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("ég")),
                  DataCell(Text(
                    declensionMap["OP-ÞGF-GM-FH-NT-1P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("við")),
                  DataCell(Text(declensionMap["OP-ÞGF-GM-FH-NT-1P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  const DataCell(Text("þú")),
                  DataCell(Text(declensionMap["OP-ÞGF-GM-FH-NT-2P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þið")),
                  DataCell(Text(declensionMap["OP-ÞGF-GM-FH-NT-2P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("3. pers.")),
                  const DataCell(Text("hann\nhún\nþað")),
                  DataCell(Text(declensionMap["OP-ÞGF-GM-FH-NT-3P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þeir\nþær\nþau")),
                  DataCell(Text(declensionMap["OP-ÞGF-GM-FH-NT-3P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ])
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("ég")),
                  DataCell(Text(
                    declensionMap["OP-ÞGF-GM-FH-ÞT-1P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("við")),
                  DataCell(Text(declensionMap["OP-ÞGF-GM-FH-ÞT-1P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  const DataCell(Text("þú")),
                  DataCell(Text(declensionMap["OP-ÞGF-GM-FH-ÞT-2P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þið")),
                  DataCell(Text(declensionMap["OP-ÞGF-GM-FH-ÞT-2P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("3. pers.")),
                  const DataCell(Text("hann\nhún\nþað")),
                  DataCell(Text(declensionMap["OP-ÞGF-GM-FH-ÞT-3P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þeir\nþær\nþau")),
                  DataCell(Text(declensionMap["OP-ÞGF-GM-FH-ÞT-3P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                ])
              ]),
              //---------------------------------------------------------------------------------------------//
              const Text(
                "Ópersónuleg notkun - (Gervifrumlag)",
                style: TextStyle(
                    height: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const Text(
                "Framsöguháttur",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("það")),
                  DataCell(Text(
                    declensionMap["OP-það-GM-FH-NT-3P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("")),
                  const DataCell(Text("--"))
                ]),
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("það")),
                  DataCell(Text(
                    declensionMap["OP-það-GM-FH-ÞT-3P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("")),
                  const DataCell(Text("--"))
                ]),
              ]),
              //---------------------------------------------------------------------------------------------//
              const Text(
                "Viðtengingarháttur",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("það")),
                  DataCell(Text(
                    declensionMap["OP-það-GM-VH-NT-3P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("")),
                  const DataCell(Text("--"))
                ]),
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("það")),
                  DataCell(Text(
                    declensionMap["OP-það-GM-VH-ÞT-3P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("")),
                  const DataCell(Text("--"))
                ]),
              ]),
              //---------------------------------------------------------------------------------------------//
              const Text(
                "Miðmynd",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 2,
                    fontSize: 18,
                    color: Colors.black54),
              ),
              const Text(
                "Nafnháttur",
                style:
                    TextStyle(height: 1, fontSize: 15, color: Colors.black87),
              ),
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: "að",
                    style: TextStyle(color: Colors.black87, fontSize: 14)),
                TextSpan(
                    text: " " + declensionMap['MM-NH'],
                    style: const TextStyle(color: Colors.blue, fontSize: 14))
              ])),
              //---------------------------------------------------------------------------------------------//
              const Text(
                "Persónuleg notkun",
                style: TextStyle(
                    height: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const Text(
                "Framsöguháttur",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("ég")),
                  DataCell(Text(
                    declensionMap["MM-FH-NT-1P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("við")),
                  DataCell(Text(declensionMap["MM-FH-NT-1P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  const DataCell(Text("þú")),
                  DataCell(Text(declensionMap["MM-FH-NT-2P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þið")),
                  DataCell(Text(declensionMap["MM-FH-NT-2P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("3. pers.")),
                  const DataCell(Text("hann\nhún\nþað")),
                  DataCell(Text(declensionMap["MM-FH-NT-3P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þeir\nþær\nþau")),
                  DataCell(Text(declensionMap["MM-FH-NT-3P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ])
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("ég")),
                  DataCell(Text(
                    declensionMap["MM-FH-ÞT-1P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("við")),
                  DataCell(Text(declensionMap["MM-FH-ÞT-1P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  const DataCell(Text("þú")),
                  DataCell(Text(declensionMap["MM-FH-ÞT-2P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þið")),
                  DataCell(Text(declensionMap["MM-FH-ÞT-2P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("3. pers.")),
                  const DataCell(Text("hann\nhún\nþað")),
                  DataCell(Text(declensionMap["MM-FH-ÞT-3P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þeir\nþær\nþau")),
                  DataCell(Text(declensionMap["MM-FH-ÞT-3P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                ])
              ]),
              //---------------------------------------------------------------------------------------------//
              const Text(
                "Viðtengingarháttur",
                style:
                    TextStyle(color: Colors.black87, fontSize: 17, height: 3),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("ég")),
                  DataCell(Text(
                    declensionMap["MM-VH-NT-1P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("við")),
                  DataCell(Text(declensionMap["MM-VH-NT-1P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  const DataCell(Text("þú")),
                  DataCell(Text(declensionMap["MM-VH-NT-2P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þið")),
                  DataCell(Text(declensionMap["MM-VH-NT-2P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("3. pers.")),
                  const DataCell(Text("hann\nhún\nþað")),
                  DataCell(Text(declensionMap["MM-VH-NT-3P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þeir\nþær\nþau")),
                  DataCell(Text(declensionMap["MM-VH-NT-3P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ])
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("Ft.")),
                DataColumn(label: Text(""))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("1. pers.")),
                  const DataCell(Text("ég")),
                  DataCell(Text(
                    declensionMap["MM-VH-ÞT-1P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  const DataCell(Text("við")),
                  DataCell(Text(declensionMap["MM-VH-ÞT-1P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  const DataCell(Text("þú")),
                  DataCell(Text(declensionMap["MM-VH-ÞT-2P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þið")),
                  DataCell(Text(declensionMap["MM-VH-ÞT-2P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("3. pers.")),
                  const DataCell(Text("hann\nhún\nþað")),
                  DataCell(Text(declensionMap["MM-VH-ÞT-3P-ET"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                  const DataCell(Text("þeir\nþær\nþau")),
                  DataCell(Text(declensionMap["MM-VH-ÞT-3P-FT"] ?? "--",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
                ])
              ]),
              const Text(
                "Boðháttur",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 3),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("")),
                DataColumn(label: Text("Germynd")),
                DataColumn(label: Text("Miðmynd"))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Stýfður")),
                  DataCell(Text(
                    declensionMap["GM-BH-ST"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["MM-BH-ST"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Et.")),
                  DataCell(Text(
                    declensionMap["MM-BH-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["GM-BH-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Ft.")),
                  DataCell(Text(
                    declensionMap["MM-BH-FT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["GM-BH-FT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ])
              ]),
              const Text(
                "Lýsingarháttur nútíðar",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 3),
              ),
              Text(
                declensionMap['LHNT'],
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 3),
              ),
              const Text(
                "Sagnbót",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 3),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Germynd")),
                DataColumn(label: Text("Miðmynd"))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(Text(
                    declensionMap["GM-SAGNB"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["MM-SAGNB"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
              ]),
              const Text(
                "Lýsingarháttur þátíðar",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 3),
              ),
              const Text(
                "Sterk beyging",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Eintala")),
                DataColumn(label: Text("Karlkyn")),
                DataColumn(label: Text("Kvenkyn")),
                DataColumn(label: Text("Hvorugkyn"))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Nf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KK-NFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KVK-NFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-HK-NFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KK-ÞFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KVK-ÞFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-HK-ÞFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þgf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KK-ÞGFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KVK-ÞGFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-HK-ÞGFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Ef.")),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KK-EFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KVK-EFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-HK-EFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ])
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Fleirtala")),
                DataColumn(label: Text("Karlkyn")),
                DataColumn(label: Text("Kvenkyn")),
                DataColumn(label: Text("Hvorugkyn"))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Nf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KK-NFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KVK-NFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-HK-NFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KK-ÞFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KVK-ÞFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-HK-ÞFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þgf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KK-ÞGFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KVK-ÞGFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-HK-ÞGFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Ef.")),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KK-EFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-KVK-EFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-SB-HK-EFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ])
              ]),
              const Text(
                "Veik beyging",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    height: 3),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Eintala")),
                DataColumn(label: Text("Karlkyn")),
                DataColumn(label: Text("Kvenkyn")),
                DataColumn(label: Text("Hvorugkyn"))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Nf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KK-NFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KVK-NFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-HK-NFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KK-ÞFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KVK-ÞFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-HK-ÞFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þgf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KK-ÞGFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KVK-ÞGFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-HK-ÞGFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Ef.")),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KK-EFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KVK-EFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-HK-EFET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ])
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Fleirtala")),
                DataColumn(label: Text("Karlkyn")),
                DataColumn(label: Text("Kvenkyn")),
                DataColumn(label: Text("Hvorugkyn"))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Nf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KK-NFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KVK-NFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-HK-NFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KK-ÞFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KVK-ÞFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-HK-ÞFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Þgf.")),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KK-ÞGFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KVK-ÞGFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-HK-ÞGFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
                DataRow(cells: <DataCell>[
                  const DataCell(Text("Ef.")),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KK-EFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-KVK-EFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["LHÞT-VB-HK-EFFT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ])
              ]),
              const Text(
                "Spurnarmyndir",
                style: TextStyle(
                    height: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const Text(
                "Germynd",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              const Text(
                "Framsöguháttur",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("Ft."))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  DataCell(Text(
                    declensionMap["SP-GM-FH-NT-2P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["SP-GM-FH-NT-2P-FT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("Ft."))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  DataCell(Text(
                    declensionMap["SP-GM-FH-ÞT-2P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["SP-GM-FH-ÞT-2P-FT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
              ]),
              const Text(
                "Viðtengingarháttur",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("Ft."))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  DataCell(Text(
                    declensionMap["SP-GM-VH-NT-2P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["SP-GM-VH-NT-2P-FT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("Ft."))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  DataCell(Text(
                    declensionMap["SP-GM-VH-ÞT-2P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["SP-GM-VH-ÞT-2P-FT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
              ]),
              const Text(
                "Miðmynd",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 17),
              ),
              const Text(
                "Framsöguháttur",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("Ft."))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  DataCell(Text(
                    declensionMap["SP-MM-FH-NT-2P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["SP-MM-FH-NT-2P-FT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("Ft."))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  DataCell(Text(
                    declensionMap["SP-MM-FH-ÞT-2P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["SP-MM-FH-ÞT-2P-FT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
              ]),
              const Text(
                "Viðtengingarháttur",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Nútíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("Ft."))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  DataCell(Text(
                    declensionMap["SP-MM-VH-NT-2P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["SP-MM-VH-NT-2P-FT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
              ]),
              DataTable(columnSpacing: 0, columns: const <DataColumn>[
                DataColumn(label: Text("Þátíð")),
                DataColumn(label: Text("Et.")),
                DataColumn(label: Text("Ft."))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  const DataCell(Text("2. pers.")),
                  DataCell(Text(
                    declensionMap["SP-MM-VH-ÞT-2P-ET"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )),
                  DataCell(Text(
                    declensionMap["SP-MM-VH-ÞT-2P-FT"] ?? "--",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ))
                ]),
              ])
            ],
          ),
        ));
  }
}
