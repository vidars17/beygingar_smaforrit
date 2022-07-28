import 'package:json_annotation/json_annotation.dart';

part 'morgOrd.g.dart';

@JsonSerializable()
class MorgOrd {
  List<OrdDetail> ordDetail;

  MorgOrd(List<OrdDetail>? ordDetail) : ordDetail = ordDetail ?? <OrdDetail>[];

  factory MorgOrd.fromJson(Map<String, dynamic> json) => _$MorgOrdFromJson(json);
}


@JsonSerializable()
class OrdDetail {
  final String ord;
  final String guid;
  final String ofl_heiti;
  final String ofl;
  final kyn;
  final String hluti;

  OrdDetail(this.ord, this.guid, this.ofl_heiti, this.ofl, this.kyn, this.hluti);

  factory OrdDetail.fromJson(Map<String, dynamic> json) => _$OrdDetailFromJson(json);
}