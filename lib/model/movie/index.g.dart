// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
  imgUrl: json['imgUrl'] as String,
  title: json['title'] as String,
  id: (json['id'] as num).toInt(),
  publishedMin: (json['publishedMin'] as num?)?.toInt(),
  durationMin: (json['durationMin'] as num?)?.toInt(),
  type: json['type'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'imgUrl': instance.imgUrl,
      'title': instance.title,
      'id': instance.id,
      'publishedMin': instance.publishedMin,
      'durationMin': instance.durationMin,
      'type': instance.type,
      'description': instance.description,
    };
