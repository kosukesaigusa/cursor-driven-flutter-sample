// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FooImpl _$$FooImplFromJson(Map<String, dynamic> json) => _$FooImpl(
      someField: json['someField'] as String,
      things: (json['things'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FooImplToJson(_$FooImpl instance) => <String, dynamic>{
      'someField': instance.someField,
      'things': instance.things,
    };
