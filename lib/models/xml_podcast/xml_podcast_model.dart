import 'package:freezed_annotation/freezed_annotation.dart';

part 'xml_podcast_model.g.dart';
part 'xml_podcast_model.freezed.dart';

@freezed
class XmlPodcastModel with _$XmlPodcastModel {
  factory XmlPodcastModel({
    required String title,
    required String link,
    required String description,
    required String pubDate,
    required XmlPodcastEnclosureModel enclosure,
    @JsonKey(name: 'itunes:duration') required String duration,
    @JsonKey(name: 'itunes:episodeType') required String episodeType,
    @JsonConvertToImage() @JsonKey(name: 'itunes:image') required String image,
  }) = _XmlPodcastModel;

  factory XmlPodcastModel.fromJson(json) => _$XmlPodcastModelFromJson(json);
}

@freezed
class XmlPodcastEnclosureModel with _$XmlPodcastEnclosureModel {
  factory XmlPodcastEnclosureModel({
    @JsonKey(name: '_url') required String url,
    @JsonKey(name: '_type') required String type,
    @JsonKey(name: '_length') required String length,
  }) = _XmlPodcastEnclosureModel;

  factory XmlPodcastEnclosureModel.fromJson(json) =>
      _$XmlPodcastEnclosureModelFromJson(json);
}

class JsonConvertToImage
    implements JsonConverter<String, Map<String, dynamic>> {
  const JsonConvertToImage();
  @override
  String fromJson(Map<String, dynamic> json) => json['_href'].toString();

  @override
  Map<String, dynamic> toJson(String object) => {'_href': object};
}
