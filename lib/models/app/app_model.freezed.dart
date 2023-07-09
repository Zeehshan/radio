// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppModel _$AppModelFromJson(Map<String, dynamic> json) {
  return _AppModel.fromJson(json);
}

/// @nodoc
mixin _$AppModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nombre_app')
  String get appName => throw _privateConstructorUsedError;
  String get powered => throw _privateConstructorUsedError;
  @JsonKey(name: 'fondo')
  String get bottom => throw _privateConstructorUsedError;
  @ColorConverter()
  @JsonKey(name: 'destacado')
  Color get outstanding => throw _privateConstructorUsedError;
  @ColorConverter()
  @JsonKey(name: 'texto')
  Color get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'botones')
  AppButtonsModel get buttons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppModelCopyWith<AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModelCopyWith<$Res> {
  factory $AppModelCopyWith(AppModel value, $Res Function(AppModel) then) =
      _$AppModelCopyWithImpl<$Res, AppModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'nombre_app') String appName,
      String powered,
      @JsonKey(name: 'fondo') String bottom,
      @ColorConverter() @JsonKey(name: 'destacado') Color outstanding,
      @ColorConverter() @JsonKey(name: 'texto') Color text,
      @JsonKey(name: 'botones') AppButtonsModel buttons});

  $AppButtonsModelCopyWith<$Res> get buttons;
}

/// @nodoc
class _$AppModelCopyWithImpl<$Res, $Val extends AppModel>
    implements $AppModelCopyWith<$Res> {
  _$AppModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appName = null,
    Object? powered = null,
    Object? bottom = null,
    Object? outstanding = null,
    Object? text = null,
    Object? buttons = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      powered: null == powered
          ? _value.powered
          : powered // ignore: cast_nullable_to_non_nullable
              as String,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as String,
      outstanding: null == outstanding
          ? _value.outstanding
          : outstanding // ignore: cast_nullable_to_non_nullable
              as Color,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Color,
      buttons: null == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as AppButtonsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppButtonsModelCopyWith<$Res> get buttons {
    return $AppButtonsModelCopyWith<$Res>(_value.buttons, (value) {
      return _then(_value.copyWith(buttons: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppModelCopyWith<$Res> implements $AppModelCopyWith<$Res> {
  factory _$$_AppModelCopyWith(
          _$_AppModel value, $Res Function(_$_AppModel) then) =
      __$$_AppModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'nombre_app') String appName,
      String powered,
      @JsonKey(name: 'fondo') String bottom,
      @ColorConverter() @JsonKey(name: 'destacado') Color outstanding,
      @ColorConverter() @JsonKey(name: 'texto') Color text,
      @JsonKey(name: 'botones') AppButtonsModel buttons});

  @override
  $AppButtonsModelCopyWith<$Res> get buttons;
}

/// @nodoc
class __$$_AppModelCopyWithImpl<$Res>
    extends _$AppModelCopyWithImpl<$Res, _$_AppModel>
    implements _$$_AppModelCopyWith<$Res> {
  __$$_AppModelCopyWithImpl(
      _$_AppModel _value, $Res Function(_$_AppModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appName = null,
    Object? powered = null,
    Object? bottom = null,
    Object? outstanding = null,
    Object? text = null,
    Object? buttons = null,
  }) {
    return _then(_$_AppModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      powered: null == powered
          ? _value.powered
          : powered // ignore: cast_nullable_to_non_nullable
              as String,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as String,
      outstanding: null == outstanding
          ? _value.outstanding
          : outstanding // ignore: cast_nullable_to_non_nullable
              as Color,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Color,
      buttons: null == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as AppButtonsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppModel implements _AppModel {
  _$_AppModel(
      {required this.id,
      @JsonKey(name: 'nombre_app') required this.appName,
      required this.powered,
      @JsonKey(name: 'fondo') required this.bottom,
      @ColorConverter() @JsonKey(name: 'destacado') required this.outstanding,
      @ColorConverter() @JsonKey(name: 'texto') required this.text,
      @JsonKey(name: 'botones') required this.buttons});

  factory _$_AppModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'nombre_app')
  final String appName;
  @override
  final String powered;
  @override
  @JsonKey(name: 'fondo')
  final String bottom;
  @override
  @ColorConverter()
  @JsonKey(name: 'destacado')
  final Color outstanding;
  @override
  @ColorConverter()
  @JsonKey(name: 'texto')
  final Color text;
  @override
  @JsonKey(name: 'botones')
  final AppButtonsModel buttons;

  @override
  String toString() {
    return 'AppModel(id: $id, appName: $appName, powered: $powered, bottom: $bottom, outstanding: $outstanding, text: $text, buttons: $buttons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.powered, powered) || other.powered == powered) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.outstanding, outstanding) ||
                other.outstanding == outstanding) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.buttons, buttons) || other.buttons == buttons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, appName, powered, bottom, outstanding, text, buttons);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppModelCopyWith<_$_AppModel> get copyWith =>
      __$$_AppModelCopyWithImpl<_$_AppModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppModelToJson(
      this,
    );
  }
}

abstract class _AppModel implements AppModel {
  factory _AppModel(
      {required final String id,
      @JsonKey(name: 'nombre_app')
          required final String appName,
      required final String powered,
      @JsonKey(name: 'fondo')
          required final String bottom,
      @ColorConverter()
      @JsonKey(name: 'destacado')
          required final Color outstanding,
      @ColorConverter()
      @JsonKey(name: 'texto')
          required final Color text,
      @JsonKey(name: 'botones')
          required final AppButtonsModel buttons}) = _$_AppModel;

  factory _AppModel.fromJson(Map<String, dynamic> json) = _$_AppModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'nombre_app')
  String get appName;
  @override
  String get powered;
  @override
  @JsonKey(name: 'fondo')
  String get bottom;
  @override
  @ColorConverter()
  @JsonKey(name: 'destacado')
  Color get outstanding;
  @override
  @ColorConverter()
  @JsonKey(name: 'texto')
  Color get text;
  @override
  @JsonKey(name: 'botones')
  AppButtonsModel get buttons;
  @override
  @JsonKey(ignore: true)
  _$$_AppModelCopyWith<_$_AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AppButtonsModel _$AppButtonsModelFromJson(Map<String, dynamic> json) {
  return _AppButtonsModel.fromJson(json);
}

/// @nodoc
mixin _$AppButtonsModel {
  String get radio => throw _privateConstructorUsedError;
  @JsonKey(name: 'autoapagado')
  String get autoOff => throw _privateConstructorUsedError;
  @JsonKey(name: 'acerca')
  String get about => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppButtonsModelCopyWith<AppButtonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppButtonsModelCopyWith<$Res> {
  factory $AppButtonsModelCopyWith(
          AppButtonsModel value, $Res Function(AppButtonsModel) then) =
      _$AppButtonsModelCopyWithImpl<$Res, AppButtonsModel>;
  @useResult
  $Res call(
      {String radio,
      @JsonKey(name: 'autoapagado') String autoOff,
      @JsonKey(name: 'acerca') String about});
}

/// @nodoc
class _$AppButtonsModelCopyWithImpl<$Res, $Val extends AppButtonsModel>
    implements $AppButtonsModelCopyWith<$Res> {
  _$AppButtonsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radio = null,
    Object? autoOff = null,
    Object? about = null,
  }) {
    return _then(_value.copyWith(
      radio: null == radio
          ? _value.radio
          : radio // ignore: cast_nullable_to_non_nullable
              as String,
      autoOff: null == autoOff
          ? _value.autoOff
          : autoOff // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppButtonsModelCopyWith<$Res>
    implements $AppButtonsModelCopyWith<$Res> {
  factory _$$_AppButtonsModelCopyWith(
          _$_AppButtonsModel value, $Res Function(_$_AppButtonsModel) then) =
      __$$_AppButtonsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String radio,
      @JsonKey(name: 'autoapagado') String autoOff,
      @JsonKey(name: 'acerca') String about});
}

/// @nodoc
class __$$_AppButtonsModelCopyWithImpl<$Res>
    extends _$AppButtonsModelCopyWithImpl<$Res, _$_AppButtonsModel>
    implements _$$_AppButtonsModelCopyWith<$Res> {
  __$$_AppButtonsModelCopyWithImpl(
      _$_AppButtonsModel _value, $Res Function(_$_AppButtonsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radio = null,
    Object? autoOff = null,
    Object? about = null,
  }) {
    return _then(_$_AppButtonsModel(
      radio: null == radio
          ? _value.radio
          : radio // ignore: cast_nullable_to_non_nullable
              as String,
      autoOff: null == autoOff
          ? _value.autoOff
          : autoOff // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppButtonsModel implements _AppButtonsModel {
  _$_AppButtonsModel(
      {required this.radio,
      @JsonKey(name: 'autoapagado') required this.autoOff,
      @JsonKey(name: 'acerca') required this.about});

  factory _$_AppButtonsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppButtonsModelFromJson(json);

  @override
  final String radio;
  @override
  @JsonKey(name: 'autoapagado')
  final String autoOff;
  @override
  @JsonKey(name: 'acerca')
  final String about;

  @override
  String toString() {
    return 'AppButtonsModel(radio: $radio, autoOff: $autoOff, about: $about)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppButtonsModel &&
            (identical(other.radio, radio) || other.radio == radio) &&
            (identical(other.autoOff, autoOff) || other.autoOff == autoOff) &&
            (identical(other.about, about) || other.about == about));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, radio, autoOff, about);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppButtonsModelCopyWith<_$_AppButtonsModel> get copyWith =>
      __$$_AppButtonsModelCopyWithImpl<_$_AppButtonsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppButtonsModelToJson(
      this,
    );
  }
}

abstract class _AppButtonsModel implements AppButtonsModel {
  factory _AppButtonsModel(
          {required final String radio,
          @JsonKey(name: 'autoapagado') required final String autoOff,
          @JsonKey(name: 'acerca') required final String about}) =
      _$_AppButtonsModel;

  factory _AppButtonsModel.fromJson(Map<String, dynamic> json) =
      _$_AppButtonsModel.fromJson;

  @override
  String get radio;
  @override
  @JsonKey(name: 'autoapagado')
  String get autoOff;
  @override
  @JsonKey(name: 'acerca')
  String get about;
  @override
  @JsonKey(ignore: true)
  _$$_AppButtonsModelCopyWith<_$_AppButtonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
