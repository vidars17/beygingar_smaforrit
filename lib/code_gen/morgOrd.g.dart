// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'morgOrd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MorgOrd _$MorgOrdFromJson(Map<String, dynamic> json) => MorgOrd(
      (json['ordDetail'] as List<dynamic>?)
          ?.map((e) => OrdDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MorgOrdToJson(MorgOrd instance) => <String, dynamic>{
      'ordDetail': instance.ordDetail,
    };

OrdDetail _$OrdDetailFromJson(Map<String, dynamic> json) => OrdDetail(
      json['ord'] as String,
      json['guid'] as String,
      json['ofl_heiti'] as String,
      json['ofl'] as String,
      json['kyn'],
      json['hluti'] as String,
    );

Map<String, dynamic> _$OrdDetailToJson(OrdDetail instance) => <String, dynamic>{
      'ord': instance.ord,
      'guid': instance.guid,
      'ofl_heiti': instance.ofl_heiti,
      'ofl': instance.ofl,
      'kyn': instance.kyn,
      'hluti': instance.hluti,
    };
