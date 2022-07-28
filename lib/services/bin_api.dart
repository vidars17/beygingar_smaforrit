import 'dart:async';
import 'dart:convert';
import 'package:bin_smaforrit/code_gen/ord.dart';
import 'package:http/http.dart' as http;

Future<bool> getIsOrd(word) async{
  var apiString = "https://bin.arnastofnun.is/api/ord/" + word;
  var res = await http.get(Uri.parse(apiString));
  return res.body.contains(RegExp(r'"hluti"'));

}

Future<Ord> getOrd(word) async{
  var apiString = "https://bin.arnastofnun.is/api/ord/" + word;
  var res = await http.get(Uri.parse(apiString));
  var result = res.body.substring(1, res.body.length - 1);

  return parseOrd(result);

}



Ord parseOrd(String res) {
  Map<String, dynamic> ordMap = jsonDecode(res);
  return Ord.fromJson(ordMap);
}