import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/utils.dart';

part 'app_model.g.dart';
part 'app_model.freezed.dart';

@freezed
class AppModel with _$AppModel {
  factory AppModel({
    required String id,
    @JsonKey(name: 'nombre_app') required String appName,
    required String powered,
    @JsonKey(name: 'fondo') required String bottom,
    @ColorConverter() @JsonKey(name: 'destacado') required Color outstanding,
    @ColorConverter() @JsonKey(name: 'texto') required Color text,
    @JsonKey(name: 'botones') required AppButtonsModel buttons,
  }) = _AppModel;

  factory AppModel.fromJson(json) => _$AppModelFromJson(json);
}

@freezed
class AppButtonsModel with _$AppButtonsModel {
  factory AppButtonsModel({
    required String radio,
    @JsonKey(name: 'autoapagado') required String autoOff,
    @JsonKey(name: 'acerca') required String about,
  }) = _AppButtonsModel;

  factory AppButtonsModel.fromJson(json) => _$AppButtonsModelFromJson(json);
}

class ColorConverter implements JsonConverter<Color, String> {
  const ColorConverter();
  @override
  Color fromJson(String json) => Tools().color(hexa: json);

  @override
  String toJson(Color object) => object.toString();
}
