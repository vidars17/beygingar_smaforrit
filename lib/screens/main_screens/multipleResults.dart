import 'package:bin_smaforrit/code_gen/ordDetail.dart';
import 'package:bin_smaforrit/services/bin_api.dart';
import 'package:bin_smaforrit/styles/color_constants.dart';
import 'package:flutter/material.dart';

class MultipleResultsPage extends StatelessWidget {
  static const route = '/multipleResults';

  const MultipleResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final results =
        ModalRoute.of(context)!.settings.arguments as List<OrdDetail>;

    var numberOfResults = results.length;

    void _goToWord(int index) async {
      var res = await getOrdByGuid(results[index].guid);
      var parsedResults = parseOrd(res);
      var navOfl = parsedResults.ofl;
      Navigator.pushNamed(context, "/$navOfl", arguments: parsedResults);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("$numberOfResults orð fundust"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: background,
      ),
      body: Container(
          child: ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, int taskIndex) {
                return Card(
                  child: InkWell(
                      onTap: () {
                        _goToWord(taskIndex);
                      },
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Center(
                          child: RichText(
                            //results[taskIndex].ord + " " + results[taskIndex].kyn + " " + results[taskIndex].ofl_heiti.toLowerCase(),
                            text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(text: results[taskIndex].ord + " "),
                                  TextSpan(
                                      text: results[taskIndex].kyn + " ",
                                      style: const TextStyle(
                                          fontStyle: FontStyle.italic)),
                                  TextSpan(
                                      text: results[taskIndex]
                                          .ofl_heiti
                                          .toLowerCase())
                                ]),
                          ),
                        ),
                      )),
                );
              })),
    );
  }
}
