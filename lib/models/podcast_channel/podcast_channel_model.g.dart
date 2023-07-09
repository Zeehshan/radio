// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_channel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PodcastChannelModel _$$_PodcastChannelModelFromJson(
        Map<String, dynamic> json) =>
    _$_PodcastChannelModel(
      title: json['title'] as String,
      description: json['description'] as String,
      image: const JsonToImageForChannel()
          .fromJson(json['image'] as Map<String, dynamic>),
      item: (json['item'] as List<dynamic>)
          .map(XmlPodcastModel.fromJson)
          .toList(),
    );

Map<String, dynamic> _$$_PodcastChannelModelToJson(
        _$_PodcastChannelModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'image': const JsonToImageForChannel().toJson(instance.image),
      'item': instance.item,
    };
