// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppModel _$$_AppModelFromJson(Map<String, dynamic> json) => _$_AppModel(
      id: json['id'] as String,
      appName: json['nombre_app'] as String,
      powered: json['powered'] as String,
      bottom: json['fondo'] as String,
      outstanding: const ColorConverter().fromJson(json['destacado'] as String),
      text: const ColorConverter().fromJson(json['texto'] as String),
      buttons: AppButtonsModel.fromJson(json['botones']),
    );

Map<String, dynamic> _$$_AppModelToJson(_$_AppModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre_app': instance.appName,
      'powered': instance.powered,
      'fondo': instance.bottom,
      'destacado': const ColorConverter().toJson(instance.outstanding),
      'texto': const ColorConverter().toJson(instance.text),
      'botones': instance.buttons,
    };

_$_AppButtonsModel _$$_AppButtonsModelFromJson(Map<String, dynamic> json) =>
    _$_AppButtonsModel(
      radio: json['radio'] as String,
      autoOff: json['autoapagado'] as String,
      about: json['acerca'] as String,
    );

Map<String, dynamic> _$$_AppButtonsModelToJson(_$_AppButtonsModel instance) =>
    <String, dynamic>{
      'radio': instance.radio,
      'autoapagado': instance.autoOff,
      'acerca': instance.about,
    };
