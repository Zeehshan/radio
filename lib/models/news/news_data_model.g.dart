// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsDataModel _$$_NewsDataModelFromJson(Map<String, dynamic> json) =>
    _$_NewsDataModel(
      title: json['title'] as String,
      link: json['link'] as String,
      description: json['description'] as String,
      pubDate: json['pubDate'] as String,
      enclosure: const JsonToImageFromEnclouser()
          .fromJson(json['enclosure'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewsDataModelToJson(_$_NewsDataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'description': instance.description,
      'pubDate': instance.pubDate,
      'enclosure': const JsonToImageFromEnclouser().toJson(instance.enclosure),
    };
