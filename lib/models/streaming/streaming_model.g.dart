// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaming_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamingModel _$$_StreamingModelFromJson(Map<String, dynamic> json) =>
    _$_StreamingModel(
      multiple: json['multiple'] as String,
      canal:
          json['canal'] == null ? null : ChannelModel.fromJson(json['canal']),
      canales: (json['canales'] as List<dynamic>?)
          ?.map(ChannelModel.fromJson)
          .toList(),
    );

Map<String, dynamic> _$$_StreamingModelToJson(_$_StreamingModel instance) =>
    <String, dynamic>{
      'multiple': instance.multiple,
      'canal': instance.canal,
      'canales': instance.canales,
    };

_$_ChannelModel _$$_ChannelModelFromJson(Map<String, dynamic> json) =>
    _$_ChannelModel(
      name: json['nombre'] as String?,
      url: json['url'] as String,
      howl: json['urlbaja'] as String,
      icon: json['icono'] as String,
      metadata: json['metadatos'] as String,
      metadatosUrl: json['metadatos_url'] as String?,
      metadatosArtwork: json['metadatos_artwork'] as String?,
      metadatosTiempo: json['metadatos_tiempo'] as String?,
    );

Map<String, dynamic> _$$_ChannelModelToJson(_$_ChannelModel instance) =>
    <String, dynamic>{
      'nombre': instance.name,
      'url': instance.url,
      'urlbaja': instance.howl,
      'icono': instance.icon,
      'metadatos': instance.metadata,
      'metadatos_url': instance.metadatosUrl,
      'metadatos_artwork': instance.metadatosArtwork,
      'metadatos_tiempo': instance.metadatosTiempo,
    };
