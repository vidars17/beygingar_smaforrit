// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ord _$OrdFromJson(Map<String, dynamic> json) => Ord(
      json['ord'] as String,
      json['guid'] as String,
      json['ofl'] as String,
      json['ofl_heiti'] as String,
      json['kyn'] as String,
      (json['bmyndir'] as List<dynamic>?)
          ?.map((e) => BMyndir.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrdToJson(Ord instance) => <String, dynamic>{
      'ord': instance.ord,
      'guid': instance.guid,
      'ofl': instance.ofl,
      'ofl_heiti': instance.ofl_heiti,
      'kyn': instance.kyn,
      'bmyndir': instance.bmyndir,
    };

BMyndir _$BMyndirFromJson(Map<String, dynamic> json) => BMyndir(
      json['b'] as String?,
      json['g'] as String?,
    );

Map<String, dynamic> _$BMyndirToJson(BMyndir instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('g', instance.g);
  writeNotNull('b', instance.b);
  return val;
}
