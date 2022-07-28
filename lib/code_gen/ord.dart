import 'dart:ffi';
import 'package:json_annotation/json_annotation.dart';

part 'ord.g.dart';


@JsonSerializable()
class Ord {
    final String ord;
    final String guid;
    final String ofl;
    final String ofl_heiti;
    final String kyn;
    List<BMyndir> bmyndir;

    Ord(
        this.ord,
        this.guid,
        this.ofl,
        this.ofl_heiti,
        this.kyn,
        List<BMyndir>? bmyndir
    ) : bmyndir = bmyndir ?? <BMyndir>[];

    factory Ord.fromJson(Map<String, dynamic> json) => _$OrdFromJson(json);
}

@JsonSerializable(includeIfNull: false)
class BMyndir {
  String? g;
  String? b;

  BMyndir(this.b, this.g);

  factory BMyndir.fromJson(Map<String, dynamic> json) => _$BMyndirFromJson(json);

}