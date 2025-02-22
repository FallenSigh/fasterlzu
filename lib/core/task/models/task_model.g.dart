// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      name: json['name'] as String,
      endTime: json['endTime'] as String,
      isUrgent: json['isUrgent'] as bool,
      isCompleted: json['isCompleted'] as bool,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'endTime': instance.endTime,
      'isUrgent': instance.isUrgent,
      'isCompleted': instance.isCompleted,
    };
