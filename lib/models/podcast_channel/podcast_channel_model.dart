import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'podcast_channel_model.g.dart';
part 'podcast_channel_model.freezed.dart';

@freezed
class PodcastChannelModel with _$PodcastChannelModel {
  factory PodcastChannelModel({
    required String title,
    required String description,
    @JsonToImageForChannel() required String image,
    required List<XmlPodcastModel> item,
  }) = _PodcastChannelModel;

  factory PodcastChannelModel.fromJson(json) =>
      _$PodcastChannelModelFromJson(json);
}

class JsonToImageForChannel
    implements JsonConverter<String, Map<String, dynamic>> {
  const JsonToImageForChannel();

  @override
  String fromJson(Map<String, dynamic> json) => json['url'].toString();

  @override
  Map<String, String> toJson(String object) => {'url': object};
}
