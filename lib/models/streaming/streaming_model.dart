import 'package:freezed_annotation/freezed_annotation.dart';

part 'streaming_model.g.dart';
part 'streaming_model.freezed.dart';

@freezed
class StreamingModel with _$StreamingModel {
  factory StreamingModel({
    required String multiple,
    required ChannelModel? canal,
    required List<ChannelModel>? canales,
  }) = _StreamingModel;

  factory StreamingModel.fromJson(json) => _$StreamingModelFromJson(json);
}

@freezed
class ChannelModel with _$ChannelModel {
  factory ChannelModel({
    @JsonKey(name: 'nombre') required String? name,
    required String url,
    @JsonKey(name: 'urlbaja') required String howl,
    @JsonKey(name: 'icono') required String icon,
    @JsonKey(name: 'metadatos') required String metadata,
    @JsonKey(name: 'metadatos_url') String? metadatosUrl,
    @JsonKey(name: 'metadatos_artwork') required String? metadatosArtwork,
    @JsonKey(name: 'metadatos_tiempo') String? metadatosTiempo,
  }) = _ChannelModel;

  factory ChannelModel.fromJson(json) => _$ChannelModelFromJson(json);
}
