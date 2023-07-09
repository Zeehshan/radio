import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_data_model.g.dart';
part 'news_data_model.freezed.dart';

@freezed
class NewsDataModel with _$NewsDataModel {
  factory NewsDataModel({
    required String title,
    required String link,
    required String description,
    required String pubDate,
    @JsonToImageFromEnclouser() required String enclosure,
  }) = _NewsDataModel;

  factory NewsDataModel.fromJson(json) => _$NewsDataModelFromJson(json);
}

class JsonToImageFromEnclouser
    implements JsonConverter<String, Map<String, dynamic>> {
  const JsonToImageFromEnclouser();

  @override
  String fromJson(Map<String, dynamic> json) => json['_url'].toString();

  @override
  Map<String, String> toJson(String object) => {'_url': object};
}
