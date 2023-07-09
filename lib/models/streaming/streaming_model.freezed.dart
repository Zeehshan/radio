// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'streaming_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreamingModel _$StreamingModelFromJson(Map<String, dynamic> json) {
  return _StreamingModel.fromJson(json);
}

/// @nodoc
mixin _$StreamingModel {
  String get multiple => throw _privateConstructorUsedError;
  ChannelModel? get canal => throw _privateConstructorUsedError;
  List<ChannelModel>? get canales => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamingModelCopyWith<StreamingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamingModelCopyWith<$Res> {
  factory $StreamingModelCopyWith(
          StreamingModel value, $Res Function(StreamingModel) then) =
      _$StreamingModelCopyWithImpl<$Res, StreamingModel>;
  @useResult
  $Res call(
      {String multiple, ChannelModel? canal, List<ChannelModel>? canales});

  $ChannelModelCopyWith<$Res>? get canal;
}

/// @nodoc
class _$StreamingModelCopyWithImpl<$Res, $Val extends StreamingModel>
    implements $StreamingModelCopyWith<$Res> {
  _$StreamingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiple = null,
    Object? canal = freezed,
    Object? canales = freezed,
  }) {
    return _then(_value.copyWith(
      multiple: null == multiple
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as String,
      canal: freezed == canal
          ? _value.canal
          : canal // ignore: cast_nullable_to_non_nullable
              as ChannelModel?,
      canales: freezed == canales
          ? _value.canales
          : canales // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelModelCopyWith<$Res>? get canal {
    if (_value.canal == null) {
      return null;
    }

    return $ChannelModelCopyWith<$Res>(_value.canal!, (value) {
      return _then(_value.copyWith(canal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StreamingModelCopyWith<$Res>
    implements $StreamingModelCopyWith<$Res> {
  factory _$$_StreamingModelCopyWith(
          _$_StreamingModel value, $Res Function(_$_StreamingModel) then) =
      __$$_StreamingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String multiple, ChannelModel? canal, List<ChannelModel>? canales});

  @override
  $ChannelModelCopyWith<$Res>? get canal;
}

/// @nodoc
class __$$_StreamingModelCopyWithImpl<$Res>
    extends _$StreamingModelCopyWithImpl<$Res, _$_StreamingModel>
    implements _$$_StreamingModelCopyWith<$Res> {
  __$$_StreamingModelCopyWithImpl(
      _$_StreamingModel _value, $Res Function(_$_StreamingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiple = null,
    Object? canal = freezed,
    Object? canales = freezed,
  }) {
    return _then(_$_StreamingModel(
      multiple: null == multiple
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as String,
      canal: freezed == canal
          ? _value.canal
          : canal // ignore: cast_nullable_to_non_nullable
              as ChannelModel?,
      canales: freezed == canales
          ? _value._canales
          : canales // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreamingModel implements _StreamingModel {
  _$_StreamingModel(
      {required this.multiple,
      required this.canal,
      required final List<ChannelModel>? canales})
      : _canales = canales;

  factory _$_StreamingModel.fromJson(Map<String, dynamic> json) =>
      _$$_StreamingModelFromJson(json);

  @override
  final String multiple;
  @override
  final ChannelModel? canal;
  final List<ChannelModel>? _canales;
  @override
  List<ChannelModel>? get canales {
    final value = _canales;
    if (value == null) return null;
    if (_canales is EqualUnmodifiableListView) return _canales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StreamingModel(multiple: $multiple, canal: $canal, canales: $canales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamingModel &&
            (identical(other.multiple, multiple) ||
                other.multiple == multiple) &&
            (identical(other.canal, canal) || other.canal == canal) &&
            const DeepCollectionEquality().equals(other._canales, _canales));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, multiple, canal,
      const DeepCollectionEquality().hash(_canales));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreamingModelCopyWith<_$_StreamingModel> get copyWith =>
      __$$_StreamingModelCopyWithImpl<_$_StreamingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamingModelToJson(
      this,
    );
  }
}

abstract class _StreamingModel implements StreamingModel {
  factory _StreamingModel(
      {required final String multiple,
      required final ChannelModel? canal,
      required final List<ChannelModel>? canales}) = _$_StreamingModel;

  factory _StreamingModel.fromJson(Map<String, dynamic> json) =
      _$_StreamingModel.fromJson;

  @override
  String get multiple;
  @override
  ChannelModel? get canal;
  @override
  List<ChannelModel>? get canales;
  @override
  @JsonKey(ignore: true)
  _$$_StreamingModelCopyWith<_$_StreamingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelModel _$ChannelModelFromJson(Map<String, dynamic> json) {
  return _ChannelModel.fromJson(json);
}

/// @nodoc
mixin _$ChannelModel {
  @JsonKey(name: 'nombre')
  String? get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlbaja')
  String get howl => throw _privateConstructorUsedError;
  @JsonKey(name: 'icono')
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadatos')
  String get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadatos_url')
  String? get metadatosUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadatos_artwork')
  String? get metadatosArtwork => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadatos_tiempo')
  String? get metadatosTiempo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelModelCopyWith<ChannelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelModelCopyWith<$Res> {
  factory $ChannelModelCopyWith(
          ChannelModel value, $Res Function(ChannelModel) then) =
      _$ChannelModelCopyWithImpl<$Res, ChannelModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nombre') String? name,
      String url,
      @JsonKey(name: 'urlbaja') String howl,
      @JsonKey(name: 'icono') String icon,
      @JsonKey(name: 'metadatos') String metadata,
      @JsonKey(name: 'metadatos_url') String? metadatosUrl,
      @JsonKey(name: 'metadatos_artwork') String? metadatosArtwork,
      @JsonKey(name: 'metadatos_tiempo') String? metadatosTiempo});
}

/// @nodoc
class _$ChannelModelCopyWithImpl<$Res, $Val extends ChannelModel>
    implements $ChannelModelCopyWith<$Res> {
  _$ChannelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = null,
    Object? howl = null,
    Object? icon = null,
    Object? metadata = null,
    Object? metadatosUrl = freezed,
    Object? metadatosArtwork = freezed,
    Object? metadatosTiempo = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      howl: null == howl
          ? _value.howl
          : howl // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as String,
      metadatosUrl: freezed == metadatosUrl
          ? _value.metadatosUrl
          : metadatosUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadatosArtwork: freezed == metadatosArtwork
          ? _value.metadatosArtwork
          : metadatosArtwork // ignore: cast_nullable_to_non_nullable
              as String?,
      metadatosTiempo: freezed == metadatosTiempo
          ? _value.metadatosTiempo
          : metadatosTiempo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelModelCopyWith<$Res>
    implements $ChannelModelCopyWith<$Res> {
  factory _$$_ChannelModelCopyWith(
          _$_ChannelModel value, $Res Function(_$_ChannelModel) then) =
      __$$_ChannelModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nombre') String? name,
      String url,
      @JsonKey(name: 'urlbaja') String howl,
      @JsonKey(name: 'icono') String icon,
      @JsonKey(name: 'metadatos') String metadata,
      @JsonKey(name: 'metadatos_url') String? metadatosUrl,
      @JsonKey(name: 'metadatos_artwork') String? metadatosArtwork,
      @JsonKey(name: 'metadatos_tiempo') String? metadatosTiempo});
}

/// @nodoc
class __$$_ChannelModelCopyWithImpl<$Res>
    extends _$ChannelModelCopyWithImpl<$Res, _$_ChannelModel>
    implements _$$_ChannelModelCopyWith<$Res> {
  __$$_ChannelModelCopyWithImpl(
      _$_ChannelModel _value, $Res Function(_$_ChannelModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = null,
    Object? howl = null,
    Object? icon = null,
    Object? metadata = null,
    Object? metadatosUrl = freezed,
    Object? metadatosArtwork = freezed,
    Object? metadatosTiempo = freezed,
  }) {
    return _then(_$_ChannelModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      howl: null == howl
          ? _value.howl
          : howl // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as String,
      metadatosUrl: freezed == metadatosUrl
          ? _value.metadatosUrl
          : metadatosUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadatosArtwork: freezed == metadatosArtwork
          ? _value.metadatosArtwork
          : metadatosArtwork // ignore: cast_nullable_to_non_nullable
              as String?,
      metadatosTiempo: freezed == metadatosTiempo
          ? _value.metadatosTiempo
          : metadatosTiempo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelModel implements _ChannelModel {
  _$_ChannelModel(
      {@JsonKey(name: 'nombre') required this.name,
      required this.url,
      @JsonKey(name: 'urlbaja') required this.howl,
      @JsonKey(name: 'icono') required this.icon,
      @JsonKey(name: 'metadatos') required this.metadata,
      @JsonKey(name: 'metadatos_url') this.metadatosUrl,
      @JsonKey(name: 'metadatos_artwork') required this.metadatosArtwork,
      @JsonKey(name: 'metadatos_tiempo') this.metadatosTiempo});

  factory _$_ChannelModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelModelFromJson(json);

  @override
  @JsonKey(name: 'nombre')
  final String? name;
  @override
  final String url;
  @override
  @JsonKey(name: 'urlbaja')
  final String howl;
  @override
  @JsonKey(name: 'icono')
  final String icon;
  @override
  @JsonKey(name: 'metadatos')
  final String metadata;
  @override
  @JsonKey(name: 'metadatos_url')
  final String? metadatosUrl;
  @override
  @JsonKey(name: 'metadatos_artwork')
  final String? metadatosArtwork;
  @override
  @JsonKey(name: 'metadatos_tiempo')
  final String? metadatosTiempo;

  @override
  String toString() {
    return 'ChannelModel(name: $name, url: $url, howl: $howl, icon: $icon, metadata: $metadata, metadatosUrl: $metadatosUrl, metadatosArtwork: $metadatosArtwork, metadatosTiempo: $metadatosTiempo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.howl, howl) || other.howl == howl) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.metadatosUrl, metadatosUrl) ||
                other.metadatosUrl == metadatosUrl) &&
            (identical(other.metadatosArtwork, metadatosArtwork) ||
                other.metadatosArtwork == metadatosArtwork) &&
            (identical(other.metadatosTiempo, metadatosTiempo) ||
                other.metadatosTiempo == metadatosTiempo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, howl, icon, metadata,
      metadatosUrl, metadatosArtwork, metadatosTiempo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelModelCopyWith<_$_ChannelModel> get copyWith =>
      __$$_ChannelModelCopyWithImpl<_$_ChannelModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelModelToJson(
      this,
    );
  }
}

abstract class _ChannelModel implements ChannelModel {
  factory _ChannelModel(
      {@JsonKey(name: 'nombre')
          required final String? name,
      required final String url,
      @JsonKey(name: 'urlbaja')
          required final String howl,
      @JsonKey(name: 'icono')
          required final String icon,
      @JsonKey(name: 'metadatos')
          required final String metadata,
      @JsonKey(name: 'metadatos_url')
          final String? metadatosUrl,
      @JsonKey(name: 'metadatos_artwork')
          required final String? metadatosArtwork,
      @JsonKey(name: 'metadatos_tiempo')
          final String? metadatosTiempo}) = _$_ChannelModel;

  factory _ChannelModel.fromJson(Map<String, dynamic> json) =
      _$_ChannelModel.fromJson;

  @override
  @JsonKey(name: 'nombre')
  String? get name;
  @override
  String get url;
  @override
  @JsonKey(name: 'urlbaja')
  String get howl;
  @override
  @JsonKey(name: 'icono')
  String get icon;
  @override
  @JsonKey(name: 'metadatos')
  String get metadata;
  @override
  @JsonKey(name: 'metadatos_url')
  String? get metadatosUrl;
  @override
  @JsonKey(name: 'metadatos_artwork')
  String? get metadatosArtwork;
  @override
  @JsonKey(name: 'metadatos_tiempo')
  String? get metadatosTiempo;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelModelCopyWith<_$_ChannelModel> get copyWith =>
      throw _privateConstructorUsedError;
}
