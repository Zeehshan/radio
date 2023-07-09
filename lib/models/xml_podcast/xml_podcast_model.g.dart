// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_podcast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_XmlPodcastModel _$$_XmlPodcastModelFromJson(Map<String, dynamic> json) =>
    _$_XmlPodcastModel(
      title: json['title'] as String,
      link: json['link'] as String,
      description: json['description'] as String,
      pubDate: json['pubDate'] as String,
      enclosure: XmlPodcastEnclosureModel.fromJson(json['enclosure']),
      duration: json['itunes:duration'] as String,
      episodeType: json['itunes:episodeType'] as String,
      image: const JsonConvertToImage()
          .fromJson(json['itunes:image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_XmlPodcastModelToJson(_$_XmlPodcastModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'description': instance.description,
      'pubDate': instance.pubDate,
      'enclosure': instance.enclosure,
      'itunes:duration': instance.duration,
      'itunes:episodeType': instance.episodeType,
      'itunes:image': const JsonConvertToImage().toJson(instance.image),
    };

_$_XmlPodcastEnclosureModel _$$_XmlPodcastEnclosureModelFromJson(
        Map<String, dynamic> json) =>
    _$_XmlPodcastEnclosureModel(
      url: json['_url'] as String,
      type: json['_type'] as String,
      length: json['_length'] as String,
    );

Map<String, dynamic> _$$_XmlPodcastEnclosureModelToJson(
        _$_XmlPodcastEnclosureModel instance) =>
    <String, dynamic>{
      '_url': instance.url,
      '_type': instance.type,
      '_length': instance.length,
    };
