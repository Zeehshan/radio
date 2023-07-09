import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'config_model.g.dart';
part 'config_model.freezed.dart';

@freezed
class ConfigModel with _$ConfigModel {
  factory ConfigModel({
    @JsonKey(name: 'resultado') required String result,
    required AppModel? app,
    required StreamingModel? streaming,
    required Map<String, SectionModel>? secciones,
    required Map<String, SocialModel>? redes,
    required BannersModel? banners,
    required NewsModel? noticias,
    required PodcastsModel? podcasts,
    required MessageModel? mensaje,
    required Map<String, ContactModel>? acerca,
  }) = _ConfigModel;

  factory ConfigModel.fromJson(json) => _$ConfigModelFromJson(json);
}

@freezed
class MessageModel with _$MessageModel {
  factory MessageModel({
    required String mostrar,
    required String texto,
    required String link,
    required String url,
  }) = _MessageModel;

  factory MessageModel.fromJson(json) => _$MessageModelFromJson(json);
}

@freezed
class PodcastsModel with _$PodcastsModel {
  factory PodcastsModel(
      {required String? activo,
      required String? multiple,
      required PodCastModel? canal,
      required List<PodCastModel>? canales}) = _PodcastsModel;
  factory PodcastsModel.fromJson(json) => _$PodcastsModelFromJson(json);
}

@freezed
class PodCastModel with _$PodCastModel {
  factory PodCastModel(
      {required String? nombre,
      required String? url,
      required String? limite}) = _PodCastModel;
  factory PodCastModel.fromJson(json) => _$PodCastModelFromJson(json);
}

@freezed
class NewsModel with _$NewsModel {
  factory NewsModel(
      {required String? mostrar,
      required String? cms,
      required String? rss,
      required String? limite}) = _NewsModel;
  factory NewsModel.fromJson(json) => _$NewsModelFromJson(json);
}

@freezed
class SectionModel with _$SectionModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory SectionModel({
    required String? activo,
    required String? boton,
    required String? url,
    required String? tiempohtml,
    required String? iconoGenerico,
  }) = _SectionModel;
  factory SectionModel.fromJson(json) => _$SectionModelFromJson(json);
}

@freezed
class BannersModel with _$BannersModel {
  factory BannersModel(
      {required String? activo,
      required String? multiple,
      required String? frecuencia,
      required BannerModel? elemento,
      required List<BannerModel>? elementos}) = _BannersModel;
  factory BannersModel.fromJson(json) => _$BannersModelFromJson(json);
}

@freezed
class BannerModel with _$BannerModel {
  factory BannerModel({String? url, String? enlace}) = _BannerModel;
  factory BannerModel.fromJson(json) => _$BannerModelFromJson(json);
}

@freezed
class SocialModel with _$SocialModel {
  factory SocialModel(
      {required String? nombre,
      required String? mostrar,
      required String? url,
      required String? orden}) = _SocialModel;
  factory SocialModel.fromJson(json) => _$SocialModelFromJson(json);
}

@freezed
class ContactModel with _$ContactModel {
  factory ContactModel({
    required String? mostrar,
    required String? data,
    String? texto,
    String? pais,
  }) = _ContactModel;
  factory ContactModel.fromJson(json) => _$ContactModelFromJson(json);
}
