// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdDetail _$OrdDetailFromJson(Map<String, dynamic> json) => OrdDetail(
      json['ord'] as String,
      json['guid'] as String,
      json['ofl_heiti'] as String,
      json['ofl'] as String,
      json['kyn'],
      json['hluti'] as String,
    );

Map<String, dynamic> _$OrdDetailToJson(OrdDetail instance) {
  final val = <String, dynamic>{
    'ord': instance.ord,
    'guid': instance.guid,
    'ofl_heiti': instance.ofl_heiti,
    'ofl': instance.ofl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kyn', instance.kyn);
  val['hluti'] = instance.hluti;
  return val;
}
