import 'package:json_annotation/json_annotation.dart';

part 'ordDetail.g.dart';

@JsonSerializable(includeIfNull: false)
class OrdDetail {
  final String ord;
  final String guid;
  final String ofl_heiti;
  final String ofl;
  final kyn;
  final String hluti;

  OrdDetail(
      this.ord, this.guid, this.ofl_heiti, this.ofl, this.kyn, this.hluti);

  factory OrdDetail.fromJson(Map<String, dynamic> json) =>
      _$OrdDetailFromJson(json);
}
