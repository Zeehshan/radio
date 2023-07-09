// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigModel _$ConfigModelFromJson(Map<String, dynamic> json) {
  return _ConfigModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigModel {
  @JsonKey(name: 'resultado')
  String get result => throw _privateConstructorUsedError;
  AppModel? get app => throw _privateConstructorUsedError;
  StreamingModel? get streaming => throw _privateConstructorUsedError;
  Map<String, SectionModel>? get secciones =>
      throw _privateConstructorUsedError;
  Map<String, SocialModel>? get redes => throw _privateConstructorUsedError;
  BannersModel? get banners => throw _privateConstructorUsedError;
  NewsModel? get noticias => throw _privateConstructorUsedError;
  PodcastsModel? get podcasts => throw _privateConstructorUsedError;
  MessageModel? get mensaje => throw _privateConstructorUsedError;
  Map<String, ContactModel>? get acerca => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigModelCopyWith<ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigModelCopyWith<$Res> {
  factory $ConfigModelCopyWith(
          ConfigModel value, $Res Function(ConfigModel) then) =
      _$ConfigModelCopyWithImpl<$Res, ConfigModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'resultado') String result,
      AppModel? app,
      StreamingModel? streaming,
      Map<String, SectionModel>? secciones,
      Map<String, SocialModel>? redes,
      BannersModel? banners,
      NewsModel? noticias,
      PodcastsModel? podcasts,
      MessageModel? mensaje,
      Map<String, ContactModel>? acerca});

  $AppModelCopyWith<$Res>? get app;
  $StreamingModelCopyWith<$Res>? get streaming;
  $BannersModelCopyWith<$Res>? get banners;
  $NewsModelCopyWith<$Res>? get noticias;
  $PodcastsModelCopyWith<$Res>? get podcasts;
  $MessageModelCopyWith<$Res>? get mensaje;
}

/// @nodoc
class _$ConfigModelCopyWithImpl<$Res, $Val extends ConfigModel>
    implements $ConfigModelCopyWith<$Res> {
  _$ConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? app = freezed,
    Object? streaming = freezed,
    Object? secciones = freezed,
    Object? redes = freezed,
    Object? banners = freezed,
    Object? noticias = freezed,
    Object? podcasts = freezed,
    Object? mensaje = freezed,
    Object? acerca = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as AppModel?,
      streaming: freezed == streaming
          ? _value.streaming
          : streaming // ignore: cast_nullable_to_non_nullable
              as StreamingModel?,
      secciones: freezed == secciones
          ? _value.secciones
          : secciones // ignore: cast_nullable_to_non_nullable
              as Map<String, SectionModel>?,
      redes: freezed == redes
          ? _value.redes
          : redes // ignore: cast_nullable_to_non_nullable
              as Map<String, SocialModel>?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as BannersModel?,
      noticias: freezed == noticias
          ? _value.noticias
          : noticias // ignore: cast_nullable_to_non_nullable
              as NewsModel?,
      podcasts: freezed == podcasts
          ? _value.podcasts
          : podcasts // ignore: cast_nullable_to_non_nullable
              as PodcastsModel?,
      mensaje: freezed == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
      acerca: freezed == acerca
          ? _value.acerca
          : acerca // ignore: cast_nullable_to_non_nullable
              as Map<String, ContactModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppModelCopyWith<$Res>? get app {
    if (_value.app == null) {
      return null;
    }

    return $AppModelCopyWith<$Res>(_value.app!, (value) {
      return _then(_value.copyWith(app: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StreamingModelCopyWith<$Res>? get streaming {
    if (_value.streaming == null) {
      return null;
    }

    return $StreamingModelCopyWith<$Res>(_value.streaming!, (value) {
      return _then(_value.copyWith(streaming: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BannersModelCopyWith<$Res>? get banners {
    if (_value.banners == null) {
      return null;
    }

    return $BannersModelCopyWith<$Res>(_value.banners!, (value) {
      return _then(_value.copyWith(banners: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsModelCopyWith<$Res>? get noticias {
    if (_value.noticias == null) {
      return null;
    }

    return $NewsModelCopyWith<$Res>(_value.noticias!, (value) {
      return _then(_value.copyWith(noticias: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PodcastsModelCopyWith<$Res>? get podcasts {
    if (_value.podcasts == null) {
      return null;
    }

    return $PodcastsModelCopyWith<$Res>(_value.podcasts!, (value) {
      return _then(_value.copyWith(podcasts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res>? get mensaje {
    if (_value.mensaje == null) {
      return null;
    }

    return $MessageModelCopyWith<$Res>(_value.mensaje!, (value) {
      return _then(_value.copyWith(mensaje: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConfigModelCopyWith<$Res>
    implements $ConfigModelCopyWith<$Res> {
  factory _$$_ConfigModelCopyWith(
          _$_ConfigModel value, $Res Function(_$_ConfigModel) then) =
      __$$_ConfigModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'resultado') String result,
      AppModel? app,
      StreamingModel? streaming,
      Map<String, SectionModel>? secciones,
      Map<String, SocialModel>? redes,
      BannersModel? banners,
      NewsModel? noticias,
      PodcastsModel? podcasts,
      MessageModel? mensaje,
      Map<String, ContactModel>? acerca});

  @override
  $AppModelCopyWith<$Res>? get app;
  @override
  $StreamingModelCopyWith<$Res>? get streaming;
  @override
  $BannersModelCopyWith<$Res>? get banners;
  @override
  $NewsModelCopyWith<$Res>? get noticias;
  @override
  $PodcastsModelCopyWith<$Res>? get podcasts;
  @override
  $MessageModelCopyWith<$Res>? get mensaje;
}

/// @nodoc
class __$$_ConfigModelCopyWithImpl<$Res>
    extends _$ConfigModelCopyWithImpl<$Res, _$_ConfigModel>
    implements _$$_ConfigModelCopyWith<$Res> {
  __$$_ConfigModelCopyWithImpl(
      _$_ConfigModel _value, $Res Function(_$_ConfigModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? app = freezed,
    Object? streaming = freezed,
    Object? secciones = freezed,
    Object? redes = freezed,
    Object? banners = freezed,
    Object? noticias = freezed,
    Object? podcasts = freezed,
    Object? mensaje = freezed,
    Object? acerca = freezed,
  }) {
    return _then(_$_ConfigModel(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as AppModel?,
      streaming: freezed == streaming
          ? _value.streaming
          : streaming // ignore: cast_nullable_to_non_nullable
              as StreamingModel?,
      secciones: freezed == secciones
          ? _value._secciones
          : secciones // ignore: cast_nullable_to_non_nullable
              as Map<String, SectionModel>?,
      redes: freezed == redes
          ? _value._redes
          : redes // ignore: cast_nullable_to_non_nullable
              as Map<String, SocialModel>?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as BannersModel?,
      noticias: freezed == noticias
          ? _value.noticias
          : noticias // ignore: cast_nullable_to_non_nullable
              as NewsModel?,
      podcasts: freezed == podcasts
          ? _value.podcasts
          : podcasts // ignore: cast_nullable_to_non_nullable
              as PodcastsModel?,
      mensaje: freezed == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
      acerca: freezed == acerca
          ? _value._acerca
          : acerca // ignore: cast_nullable_to_non_nullable
              as Map<String, ContactModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfigModel implements _ConfigModel {
  _$_ConfigModel(
      {@JsonKey(name: 'resultado') required this.result,
      required this.app,
      required this.streaming,
      required final Map<String, SectionModel>? secciones,
      required final Map<String, SocialModel>? redes,
      required this.banners,
      required this.noticias,
      required this.podcasts,
      required this.mensaje,
      required final Map<String, ContactModel>? acerca})
      : _secciones = secciones,
        _redes = redes,
        _acerca = acerca;

  factory _$_ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigModelFromJson(json);

  @override
  @JsonKey(name: 'resultado')
  final String result;
  @override
  final AppModel? app;
  @override
  final StreamingModel? streaming;
  final Map<String, SectionModel>? _secciones;
  @override
  Map<String, SectionModel>? get secciones {
    final value = _secciones;
    if (value == null) return null;
    if (_secciones is EqualUnmodifiableMapView) return _secciones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, SocialModel>? _redes;
  @override
  Map<String, SocialModel>? get redes {
    final value = _redes;
    if (value == null) return null;
    if (_redes is EqualUnmodifiableMapView) return _redes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final BannersModel? banners;
  @override
  final NewsModel? noticias;
  @override
  final PodcastsModel? podcasts;
  @override
  final MessageModel? mensaje;
  final Map<String, ContactModel>? _acerca;
  @override
  Map<String, ContactModel>? get acerca {
    final value = _acerca;
    if (value == null) return null;
    if (_acerca is EqualUnmodifiableMapView) return _acerca;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ConfigModel(result: $result, app: $app, streaming: $streaming, secciones: $secciones, redes: $redes, banners: $banners, noticias: $noticias, podcasts: $podcasts, mensaje: $mensaje, acerca: $acerca)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigModel &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.streaming, streaming) ||
                other.streaming == streaming) &&
            const DeepCollectionEquality()
                .equals(other._secciones, _secciones) &&
            const DeepCollectionEquality().equals(other._redes, _redes) &&
            (identical(other.banners, banners) || other.banners == banners) &&
            (identical(other.noticias, noticias) ||
                other.noticias == noticias) &&
            (identical(other.podcasts, podcasts) ||
                other.podcasts == podcasts) &&
            (identical(other.mensaje, mensaje) || other.mensaje == mensaje) &&
            const DeepCollectionEquality().equals(other._acerca, _acerca));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      result,
      app,
      streaming,
      const DeepCollectionEquality().hash(_secciones),
      const DeepCollectionEquality().hash(_redes),
      banners,
      noticias,
      podcasts,
      mensaje,
      const DeepCollectionEquality().hash(_acerca));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigModelCopyWith<_$_ConfigModel> get copyWith =>
      __$$_ConfigModelCopyWithImpl<_$_ConfigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigModelToJson(
      this,
    );
  }
}

abstract class _ConfigModel implements ConfigModel {
  factory _ConfigModel(
      {@JsonKey(name: 'resultado') required final String result,
      required final AppModel? app,
      required final StreamingModel? streaming,
      required final Map<String, SectionModel>? secciones,
      required final Map<String, SocialModel>? redes,
      required final BannersModel? banners,
      required final NewsModel? noticias,
      required final PodcastsModel? podcasts,
      required final MessageModel? mensaje,
      required final Map<String, ContactModel>? acerca}) = _$_ConfigModel;

  factory _ConfigModel.fromJson(Map<String, dynamic> json) =
      _$_ConfigModel.fromJson;

  @override
  @JsonKey(name: 'resultado')
  String get result;
  @override
  AppModel? get app;
  @override
  StreamingModel? get streaming;
  @override
  Map<String, SectionModel>? get secciones;
  @override
  Map<String, SocialModel>? get redes;
  @override
  BannersModel? get banners;
  @override
  NewsModel? get noticias;
  @override
  PodcastsModel? get podcasts;
  @override
  MessageModel? get mensaje;
  @override
  Map<String, ContactModel>? get acerca;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigModelCopyWith<_$_ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  String get mostrar => throw _privateConstructorUsedError;
  String get texto => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call({String mostrar, String texto, String link, String url});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostrar = null,
    Object? texto = null,
    Object? link = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      mostrar: null == mostrar
          ? _value.mostrar
          : mostrar // ignore: cast_nullable_to_non_nullable
              as String,
      texto: null == texto
          ? _value.texto
          : texto // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageModelCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$_MessageModelCopyWith(
          _$_MessageModel value, $Res Function(_$_MessageModel) then) =
      __$$_MessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mostrar, String texto, String link, String url});
}

/// @nodoc
class __$$_MessageModelCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$_MessageModel>
    implements _$$_MessageModelCopyWith<$Res> {
  __$$_MessageModelCopyWithImpl(
      _$_MessageModel _value, $Res Function(_$_MessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostrar = null,
    Object? texto = null,
    Object? link = null,
    Object? url = null,
  }) {
    return _then(_$_MessageModel(
      mostrar: null == mostrar
          ? _value.mostrar
          : mostrar // ignore: cast_nullable_to_non_nullable
              as String,
      texto: null == texto
          ? _value.texto
          : texto // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageModel implements _MessageModel {
  _$_MessageModel(
      {required this.mostrar,
      required this.texto,
      required this.link,
      required this.url});

  factory _$_MessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageModelFromJson(json);

  @override
  final String mostrar;
  @override
  final String texto;
  @override
  final String link;
  @override
  final String url;

  @override
  String toString() {
    return 'MessageModel(mostrar: $mostrar, texto: $texto, link: $link, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageModel &&
            (identical(other.mostrar, mostrar) || other.mostrar == mostrar) &&
            (identical(other.texto, texto) || other.texto == texto) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mostrar, texto, link, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageModelCopyWith<_$_MessageModel> get copyWith =>
      __$$_MessageModelCopyWithImpl<_$_MessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageModelToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  factory _MessageModel(
      {required final String mostrar,
      required final String texto,
      required final String link,
      required final String url}) = _$_MessageModel;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$_MessageModel.fromJson;

  @override
  String get mostrar;
  @override
  String get texto;
  @override
  String get link;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_MessageModelCopyWith<_$_MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PodcastsModel _$PodcastsModelFromJson(Map<String, dynamic> json) {
  return _PodcastsModel.fromJson(json);
}

/// @nodoc
mixin _$PodcastsModel {
  String? get activo => throw _privateConstructorUsedError;
  String? get multiple => throw _privateConstructorUsedError;
  PodCastModel? get canal => throw _privateConstructorUsedError;
  List<PodCastModel>? get canales => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastsModelCopyWith<PodcastsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastsModelCopyWith<$Res> {
  factory $PodcastsModelCopyWith(
          PodcastsModel value, $Res Function(PodcastsModel) then) =
      _$PodcastsModelCopyWithImpl<$Res, PodcastsModel>;
  @useResult
  $Res call(
      {String? activo,
      String? multiple,
      PodCastModel? canal,
      List<PodCastModel>? canales});

  $PodCastModelCopyWith<$Res>? get canal;
}

/// @nodoc
class _$PodcastsModelCopyWithImpl<$Res, $Val extends PodcastsModel>
    implements $PodcastsModelCopyWith<$Res> {
  _$PodcastsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activo = freezed,
    Object? multiple = freezed,
    Object? canal = freezed,
    Object? canales = freezed,
  }) {
    return _then(_value.copyWith(
      activo: freezed == activo
          ? _value.activo
          : activo // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple: freezed == multiple
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as String?,
      canal: freezed == canal
          ? _value.canal
          : canal // ignore: cast_nullable_to_non_nullable
              as PodCastModel?,
      canales: freezed == canales
          ? _value.canales
          : canales // ignore: cast_nullable_to_non_nullable
              as List<PodCastModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PodCastModelCopyWith<$Res>? get canal {
    if (_value.canal == null) {
      return null;
    }

    return $PodCastModelCopyWith<$Res>(_value.canal!, (value) {
      return _then(_value.copyWith(canal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PodcastsModelCopyWith<$Res>
    implements $PodcastsModelCopyWith<$Res> {
  factory _$$_PodcastsModelCopyWith(
          _$_PodcastsModel value, $Res Function(_$_PodcastsModel) then) =
      __$$_PodcastsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? activo,
      String? multiple,
      PodCastModel? canal,
      List<PodCastModel>? canales});

  @override
  $PodCastModelCopyWith<$Res>? get canal;
}

/// @nodoc
class __$$_PodcastsModelCopyWithImpl<$Res>
    extends _$PodcastsModelCopyWithImpl<$Res, _$_PodcastsModel>
    implements _$$_PodcastsModelCopyWith<$Res> {
  __$$_PodcastsModelCopyWithImpl(
      _$_PodcastsModel _value, $Res Function(_$_PodcastsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activo = freezed,
    Object? multiple = freezed,
    Object? canal = freezed,
    Object? canales = freezed,
  }) {
    return _then(_$_PodcastsModel(
      activo: freezed == activo
          ? _value.activo
          : activo // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple: freezed == multiple
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as String?,
      canal: freezed == canal
          ? _value.canal
          : canal // ignore: cast_nullable_to_non_nullable
              as PodCastModel?,
      canales: freezed == canales
          ? _value._canales
          : canales // ignore: cast_nullable_to_non_nullable
              as List<PodCastModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PodcastsModel implements _PodcastsModel {
  _$_PodcastsModel(
      {required this.activo,
      required this.multiple,
      required this.canal,
      required final List<PodCastModel>? canales})
      : _canales = canales;

  factory _$_PodcastsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PodcastsModelFromJson(json);

  @override
  final String? activo;
  @override
  final String? multiple;
  @override
  final PodCastModel? canal;
  final List<PodCastModel>? _canales;
  @override
  List<PodCastModel>? get canales {
    final value = _canales;
    if (value == null) return null;
    if (_canales is EqualUnmodifiableListView) return _canales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PodcastsModel(activo: $activo, multiple: $multiple, canal: $canal, canales: $canales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PodcastsModel &&
            (identical(other.activo, activo) || other.activo == activo) &&
            (identical(other.multiple, multiple) ||
                other.multiple == multiple) &&
            (identical(other.canal, canal) || other.canal == canal) &&
            const DeepCollectionEquality().equals(other._canales, _canales));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activo, multiple, canal,
      const DeepCollectionEquality().hash(_canales));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PodcastsModelCopyWith<_$_PodcastsModel> get copyWith =>
      __$$_PodcastsModelCopyWithImpl<_$_PodcastsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PodcastsModelToJson(
      this,
    );
  }
}

abstract class _PodcastsModel implements PodcastsModel {
  factory _PodcastsModel(
      {required final String? activo,
      required final String? multiple,
      required final PodCastModel? canal,
      required final List<PodCastModel>? canales}) = _$_PodcastsModel;

  factory _PodcastsModel.fromJson(Map<String, dynamic> json) =
      _$_PodcastsModel.fromJson;

  @override
  String? get activo;
  @override
  String? get multiple;
  @override
  PodCastModel? get canal;
  @override
  List<PodCastModel>? get canales;
  @override
  @JsonKey(ignore: true)
  _$$_PodcastsModelCopyWith<_$_PodcastsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PodCastModel _$PodCastModelFromJson(Map<String, dynamic> json) {
  return _PodCastModel.fromJson(json);
}

/// @nodoc
mixin _$PodCastModel {
  String? get nombre => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get limite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodCastModelCopyWith<PodCastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodCastModelCopyWith<$Res> {
  factory $PodCastModelCopyWith(
          PodCastModel value, $Res Function(PodCastModel) then) =
      _$PodCastModelCopyWithImpl<$Res, PodCastModel>;
  @useResult
  $Res call({String? nombre, String? url, String? limite});
}

/// @nodoc
class _$PodCastModelCopyWithImpl<$Res, $Val extends PodCastModel>
    implements $PodCastModelCopyWith<$Res> {
  _$PodCastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = freezed,
    Object? url = freezed,
    Object? limite = freezed,
  }) {
    return _then(_value.copyWith(
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      limite: freezed == limite
          ? _value.limite
          : limite // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PodCastModelCopyWith<$Res>
    implements $PodCastModelCopyWith<$Res> {
  factory _$$_PodCastModelCopyWith(
          _$_PodCastModel value, $Res Function(_$_PodCastModel) then) =
      __$$_PodCastModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nombre, String? url, String? limite});
}

/// @nodoc
class __$$_PodCastModelCopyWithImpl<$Res>
    extends _$PodCastModelCopyWithImpl<$Res, _$_PodCastModel>
    implements _$$_PodCastModelCopyWith<$Res> {
  __$$_PodCastModelCopyWithImpl(
      _$_PodCastModel _value, $Res Function(_$_PodCastModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = freezed,
    Object? url = freezed,
    Object? limite = freezed,
  }) {
    return _then(_$_PodCastModel(
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      limite: freezed == limite
          ? _value.limite
          : limite // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PodCastModel implements _PodCastModel {
  _$_PodCastModel(
      {required this.nombre, required this.url, required this.limite});

  factory _$_PodCastModel.fromJson(Map<String, dynamic> json) =>
      _$$_PodCastModelFromJson(json);

  @override
  final String? nombre;
  @override
  final String? url;
  @override
  final String? limite;

  @override
  String toString() {
    return 'PodCastModel(nombre: $nombre, url: $url, limite: $limite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PodCastModel &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.limite, limite) || other.limite == limite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nombre, url, limite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PodCastModelCopyWith<_$_PodCastModel> get copyWith =>
      __$$_PodCastModelCopyWithImpl<_$_PodCastModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PodCastModelToJson(
      this,
    );
  }
}

abstract class _PodCastModel implements PodCastModel {
  factory _PodCastModel(
      {required final String? nombre,
      required final String? url,
      required final String? limite}) = _$_PodCastModel;

  factory _PodCastModel.fromJson(Map<String, dynamic> json) =
      _$_PodCastModel.fromJson;

  @override
  String? get nombre;
  @override
  String? get url;
  @override
  String? get limite;
  @override
  @JsonKey(ignore: true)
  _$$_PodCastModelCopyWith<_$_PodCastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  String? get mostrar => throw _privateConstructorUsedError;
  String? get cms => throw _privateConstructorUsedError;
  String? get rss => throw _privateConstructorUsedError;
  String? get limite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call({String? mostrar, String? cms, String? rss, String? limite});
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostrar = freezed,
    Object? cms = freezed,
    Object? rss = freezed,
    Object? limite = freezed,
  }) {
    return _then(_value.copyWith(
      mostrar: freezed == mostrar
          ? _value.mostrar
          : mostrar // ignore: cast_nullable_to_non_nullable
              as String?,
      cms: freezed == cms
          ? _value.cms
          : cms // ignore: cast_nullable_to_non_nullable
              as String?,
      rss: freezed == rss
          ? _value.rss
          : rss // ignore: cast_nullable_to_non_nullable
              as String?,
      limite: freezed == limite
          ? _value.limite
          : limite // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsModelCopyWith<$Res> implements $NewsModelCopyWith<$Res> {
  factory _$$_NewsModelCopyWith(
          _$_NewsModel value, $Res Function(_$_NewsModel) then) =
      __$$_NewsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? mostrar, String? cms, String? rss, String? limite});
}

/// @nodoc
class __$$_NewsModelCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$_NewsModel>
    implements _$$_NewsModelCopyWith<$Res> {
  __$$_NewsModelCopyWithImpl(
      _$_NewsModel _value, $Res Function(_$_NewsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostrar = freezed,
    Object? cms = freezed,
    Object? rss = freezed,
    Object? limite = freezed,
  }) {
    return _then(_$_NewsModel(
      mostrar: freezed == mostrar
          ? _value.mostrar
          : mostrar // ignore: cast_nullable_to_non_nullable
              as String?,
      cms: freezed == cms
          ? _value.cms
          : cms // ignore: cast_nullable_to_non_nullable
              as String?,
      rss: freezed == rss
          ? _value.rss
          : rss // ignore: cast_nullable_to_non_nullable
              as String?,
      limite: freezed == limite
          ? _value.limite
          : limite // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsModel implements _NewsModel {
  _$_NewsModel(
      {required this.mostrar,
      required this.cms,
      required this.rss,
      required this.limite});

  factory _$_NewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsModelFromJson(json);

  @override
  final String? mostrar;
  @override
  final String? cms;
  @override
  final String? rss;
  @override
  final String? limite;

  @override
  String toString() {
    return 'NewsModel(mostrar: $mostrar, cms: $cms, rss: $rss, limite: $limite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsModel &&
            (identical(other.mostrar, mostrar) || other.mostrar == mostrar) &&
            (identical(other.cms, cms) || other.cms == cms) &&
            (identical(other.rss, rss) || other.rss == rss) &&
            (identical(other.limite, limite) || other.limite == limite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mostrar, cms, rss, limite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      __$$_NewsModelCopyWithImpl<_$_NewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsModelToJson(
      this,
    );
  }
}

abstract class _NewsModel implements NewsModel {
  factory _NewsModel(
      {required final String? mostrar,
      required final String? cms,
      required final String? rss,
      required final String? limite}) = _$_NewsModel;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$_NewsModel.fromJson;

  @override
  String? get mostrar;
  @override
  String? get cms;
  @override
  String? get rss;
  @override
  String? get limite;
  @override
  @JsonKey(ignore: true)
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SectionModel _$SectionModelFromJson(Map<String, dynamic> json) {
  return _SectionModel.fromJson(json);
}

/// @nodoc
mixin _$SectionModel {
  String? get activo => throw _privateConstructorUsedError;
  String? get boton => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get tiempohtml => throw _privateConstructorUsedError;
  String? get iconoGenerico => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionModelCopyWith<SectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionModelCopyWith<$Res> {
  factory $SectionModelCopyWith(
          SectionModel value, $Res Function(SectionModel) then) =
      _$SectionModelCopyWithImpl<$Res, SectionModel>;
  @useResult
  $Res call(
      {String? activo,
      String? boton,
      String? url,
      String? tiempohtml,
      String? iconoGenerico});
}

/// @nodoc
class _$SectionModelCopyWithImpl<$Res, $Val extends SectionModel>
    implements $SectionModelCopyWith<$Res> {
  _$SectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activo = freezed,
    Object? boton = freezed,
    Object? url = freezed,
    Object? tiempohtml = freezed,
    Object? iconoGenerico = freezed,
  }) {
    return _then(_value.copyWith(
      activo: freezed == activo
          ? _value.activo
          : activo // ignore: cast_nullable_to_non_nullable
              as String?,
      boton: freezed == boton
          ? _value.boton
          : boton // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      tiempohtml: freezed == tiempohtml
          ? _value.tiempohtml
          : tiempohtml // ignore: cast_nullable_to_non_nullable
              as String?,
      iconoGenerico: freezed == iconoGenerico
          ? _value.iconoGenerico
          : iconoGenerico // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectionModelCopyWith<$Res>
    implements $SectionModelCopyWith<$Res> {
  factory _$$_SectionModelCopyWith(
          _$_SectionModel value, $Res Function(_$_SectionModel) then) =
      __$$_SectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? activo,
      String? boton,
      String? url,
      String? tiempohtml,
      String? iconoGenerico});
}

/// @nodoc
class __$$_SectionModelCopyWithImpl<$Res>
    extends _$SectionModelCopyWithImpl<$Res, _$_SectionModel>
    implements _$$_SectionModelCopyWith<$Res> {
  __$$_SectionModelCopyWithImpl(
      _$_SectionModel _value, $Res Function(_$_SectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activo = freezed,
    Object? boton = freezed,
    Object? url = freezed,
    Object? tiempohtml = freezed,
    Object? iconoGenerico = freezed,
  }) {
    return _then(_$_SectionModel(
      activo: freezed == activo
          ? _value.activo
          : activo // ignore: cast_nullable_to_non_nullable
              as String?,
      boton: freezed == boton
          ? _value.boton
          : boton // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      tiempohtml: freezed == tiempohtml
          ? _value.tiempohtml
          : tiempohtml // ignore: cast_nullable_to_non_nullable
              as String?,
      iconoGenerico: freezed == iconoGenerico
          ? _value.iconoGenerico
          : iconoGenerico // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SectionModel implements _SectionModel {
  _$_SectionModel(
      {required this.activo,
      required this.boton,
      required this.url,
      required this.tiempohtml,
      required this.iconoGenerico});

  factory _$_SectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SectionModelFromJson(json);

  @override
  final String? activo;
  @override
  final String? boton;
  @override
  final String? url;
  @override
  final String? tiempohtml;
  @override
  final String? iconoGenerico;

  @override
  String toString() {
    return 'SectionModel(activo: $activo, boton: $boton, url: $url, tiempohtml: $tiempohtml, iconoGenerico: $iconoGenerico)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionModel &&
            (identical(other.activo, activo) || other.activo == activo) &&
            (identical(other.boton, boton) || other.boton == boton) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.tiempohtml, tiempohtml) ||
                other.tiempohtml == tiempohtml) &&
            (identical(other.iconoGenerico, iconoGenerico) ||
                other.iconoGenerico == iconoGenerico));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, activo, boton, url, tiempohtml, iconoGenerico);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectionModelCopyWith<_$_SectionModel> get copyWith =>
      __$$_SectionModelCopyWithImpl<_$_SectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionModelToJson(
      this,
    );
  }
}

abstract class _SectionModel implements SectionModel {
  factory _SectionModel(
      {required final String? activo,
      required final String? boton,
      required final String? url,
      required final String? tiempohtml,
      required final String? iconoGenerico}) = _$_SectionModel;

  factory _SectionModel.fromJson(Map<String, dynamic> json) =
      _$_SectionModel.fromJson;

  @override
  String? get activo;
  @override
  String? get boton;
  @override
  String? get url;
  @override
  String? get tiempohtml;
  @override
  String? get iconoGenerico;
  @override
  @JsonKey(ignore: true)
  _$$_SectionModelCopyWith<_$_SectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BannersModel _$BannersModelFromJson(Map<String, dynamic> json) {
  return _BannersModel.fromJson(json);
}

/// @nodoc
mixin _$BannersModel {
  String? get activo => throw _privateConstructorUsedError;
  String? get multiple => throw _privateConstructorUsedError;
  String? get frecuencia => throw _privateConstructorUsedError;
  BannerModel? get elemento => throw _privateConstructorUsedError;
  List<BannerModel>? get elementos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannersModelCopyWith<BannersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersModelCopyWith<$Res> {
  factory $BannersModelCopyWith(
          BannersModel value, $Res Function(BannersModel) then) =
      _$BannersModelCopyWithImpl<$Res, BannersModel>;
  @useResult
  $Res call(
      {String? activo,
      String? multiple,
      String? frecuencia,
      BannerModel? elemento,
      List<BannerModel>? elementos});

  $BannerModelCopyWith<$Res>? get elemento;
}

/// @nodoc
class _$BannersModelCopyWithImpl<$Res, $Val extends BannersModel>
    implements $BannersModelCopyWith<$Res> {
  _$BannersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activo = freezed,
    Object? multiple = freezed,
    Object? frecuencia = freezed,
    Object? elemento = freezed,
    Object? elementos = freezed,
  }) {
    return _then(_value.copyWith(
      activo: freezed == activo
          ? _value.activo
          : activo // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple: freezed == multiple
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as String?,
      frecuencia: freezed == frecuencia
          ? _value.frecuencia
          : frecuencia // ignore: cast_nullable_to_non_nullable
              as String?,
      elemento: freezed == elemento
          ? _value.elemento
          : elemento // ignore: cast_nullable_to_non_nullable
              as BannerModel?,
      elementos: freezed == elementos
          ? _value.elementos
          : elementos // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BannerModelCopyWith<$Res>? get elemento {
    if (_value.elemento == null) {
      return null;
    }

    return $BannerModelCopyWith<$Res>(_value.elemento!, (value) {
      return _then(_value.copyWith(elemento: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BannersModelCopyWith<$Res>
    implements $BannersModelCopyWith<$Res> {
  factory _$$_BannersModelCopyWith(
          _$_BannersModel value, $Res Function(_$_BannersModel) then) =
      __$$_BannersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? activo,
      String? multiple,
      String? frecuencia,
      BannerModel? elemento,
      List<BannerModel>? elementos});

  @override
  $BannerModelCopyWith<$Res>? get elemento;
}

/// @nodoc
class __$$_BannersModelCopyWithImpl<$Res>
    extends _$BannersModelCopyWithImpl<$Res, _$_BannersModel>
    implements _$$_BannersModelCopyWith<$Res> {
  __$$_BannersModelCopyWithImpl(
      _$_BannersModel _value, $Res Function(_$_BannersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activo = freezed,
    Object? multiple = freezed,
    Object? frecuencia = freezed,
    Object? elemento = freezed,
    Object? elementos = freezed,
  }) {
    return _then(_$_BannersModel(
      activo: freezed == activo
          ? _value.activo
          : activo // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple: freezed == multiple
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as String?,
      frecuencia: freezed == frecuencia
          ? _value.frecuencia
          : frecuencia // ignore: cast_nullable_to_non_nullable
              as String?,
      elemento: freezed == elemento
          ? _value.elemento
          : elemento // ignore: cast_nullable_to_non_nullable
              as BannerModel?,
      elementos: freezed == elementos
          ? _value._elementos
          : elementos // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannersModel implements _BannersModel {
  _$_BannersModel(
      {required this.activo,
      required this.multiple,
      required this.frecuencia,
      required this.elemento,
      required final List<BannerModel>? elementos})
      : _elementos = elementos;

  factory _$_BannersModel.fromJson(Map<String, dynamic> json) =>
      _$$_BannersModelFromJson(json);

  @override
  final String? activo;
  @override
  final String? multiple;
  @override
  final String? frecuencia;
  @override
  final BannerModel? elemento;
  final List<BannerModel>? _elementos;
  @override
  List<BannerModel>? get elementos {
    final value = _elementos;
    if (value == null) return null;
    if (_elementos is EqualUnmodifiableListView) return _elementos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BannersModel(activo: $activo, multiple: $multiple, frecuencia: $frecuencia, elemento: $elemento, elementos: $elementos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannersModel &&
            (identical(other.activo, activo) || other.activo == activo) &&
            (identical(other.multiple, multiple) ||
                other.multiple == multiple) &&
            (identical(other.frecuencia, frecuencia) ||
                other.frecuencia == frecuencia) &&
            (identical(other.elemento, elemento) ||
                other.elemento == elemento) &&
            const DeepCollectionEquality()
                .equals(other._elementos, _elementos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activo, multiple, frecuencia,
      elemento, const DeepCollectionEquality().hash(_elementos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannersModelCopyWith<_$_BannersModel> get copyWith =>
      __$$_BannersModelCopyWithImpl<_$_BannersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannersModelToJson(
      this,
    );
  }
}

abstract class _BannersModel implements BannersModel {
  factory _BannersModel(
      {required final String? activo,
      required final String? multiple,
      required final String? frecuencia,
      required final BannerModel? elemento,
      required final List<BannerModel>? elementos}) = _$_BannersModel;

  factory _BannersModel.fromJson(Map<String, dynamic> json) =
      _$_BannersModel.fromJson;

  @override
  String? get activo;
  @override
  String? get multiple;
  @override
  String? get frecuencia;
  @override
  BannerModel? get elemento;
  @override
  List<BannerModel>? get elementos;
  @override
  @JsonKey(ignore: true)
  _$$_BannersModelCopyWith<_$_BannersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  String? get url => throw _privateConstructorUsedError;
  String? get enlace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call({String? url, String? enlace});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? enlace = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      enlace: freezed == enlace
          ? _value.enlace
          : enlace // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BannerModelCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$_BannerModelCopyWith(
          _$_BannerModel value, $Res Function(_$_BannerModel) then) =
      __$$_BannerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? enlace});
}

/// @nodoc
class __$$_BannerModelCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$_BannerModel>
    implements _$$_BannerModelCopyWith<$Res> {
  __$$_BannerModelCopyWithImpl(
      _$_BannerModel _value, $Res Function(_$_BannerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? enlace = freezed,
  }) {
    return _then(_$_BannerModel(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      enlace: freezed == enlace
          ? _value.enlace
          : enlace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannerModel implements _BannerModel {
  _$_BannerModel({this.url, this.enlace});

  factory _$_BannerModel.fromJson(Map<String, dynamic> json) =>
      _$$_BannerModelFromJson(json);

  @override
  final String? url;
  @override
  final String? enlace;

  @override
  String toString() {
    return 'BannerModel(url: $url, enlace: $enlace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannerModel &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.enlace, enlace) || other.enlace == enlace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, enlace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannerModelCopyWith<_$_BannerModel> get copyWith =>
      __$$_BannerModelCopyWithImpl<_$_BannerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerModelToJson(
      this,
    );
  }
}

abstract class _BannerModel implements BannerModel {
  factory _BannerModel({final String? url, final String? enlace}) =
      _$_BannerModel;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$_BannerModel.fromJson;

  @override
  String? get url;
  @override
  String? get enlace;
  @override
  @JsonKey(ignore: true)
  _$$_BannerModelCopyWith<_$_BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialModel _$SocialModelFromJson(Map<String, dynamic> json) {
  return _SocialModel.fromJson(json);
}

/// @nodoc
mixin _$SocialModel {
  String? get nombre => throw _privateConstructorUsedError;
  String? get mostrar => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get orden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialModelCopyWith<SocialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialModelCopyWith<$Res> {
  factory $SocialModelCopyWith(
          SocialModel value, $Res Function(SocialModel) then) =
      _$SocialModelCopyWithImpl<$Res, SocialModel>;
  @useResult
  $Res call({String? nombre, String? mostrar, String? url, String? orden});
}

/// @nodoc
class _$SocialModelCopyWithImpl<$Res, $Val extends SocialModel>
    implements $SocialModelCopyWith<$Res> {
  _$SocialModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = freezed,
    Object? mostrar = freezed,
    Object? url = freezed,
    Object? orden = freezed,
  }) {
    return _then(_value.copyWith(
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      mostrar: freezed == mostrar
          ? _value.mostrar
          : mostrar // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      orden: freezed == orden
          ? _value.orden
          : orden // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialModelCopyWith<$Res>
    implements $SocialModelCopyWith<$Res> {
  factory _$$_SocialModelCopyWith(
          _$_SocialModel value, $Res Function(_$_SocialModel) then) =
      __$$_SocialModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nombre, String? mostrar, String? url, String? orden});
}

/// @nodoc
class __$$_SocialModelCopyWithImpl<$Res>
    extends _$SocialModelCopyWithImpl<$Res, _$_SocialModel>
    implements _$$_SocialModelCopyWith<$Res> {
  __$$_SocialModelCopyWithImpl(
      _$_SocialModel _value, $Res Function(_$_SocialModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = freezed,
    Object? mostrar = freezed,
    Object? url = freezed,
    Object? orden = freezed,
  }) {
    return _then(_$_SocialModel(
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      mostrar: freezed == mostrar
          ? _value.mostrar
          : mostrar // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      orden: freezed == orden
          ? _value.orden
          : orden // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialModel implements _SocialModel {
  _$_SocialModel(
      {required this.nombre,
      required this.mostrar,
      required this.url,
      required this.orden});

  factory _$_SocialModel.fromJson(Map<String, dynamic> json) =>
      _$$_SocialModelFromJson(json);

  @override
  final String? nombre;
  @override
  final String? mostrar;
  @override
  final String? url;
  @override
  final String? orden;

  @override
  String toString() {
    return 'SocialModel(nombre: $nombre, mostrar: $mostrar, url: $url, orden: $orden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialModel &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.mostrar, mostrar) || other.mostrar == mostrar) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.orden, orden) || other.orden == orden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nombre, mostrar, url, orden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialModelCopyWith<_$_SocialModel> get copyWith =>
      __$$_SocialModelCopyWithImpl<_$_SocialModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialModelToJson(
      this,
    );
  }
}

abstract class _SocialModel implements SocialModel {
  factory _SocialModel(
      {required final String? nombre,
      required final String? mostrar,
      required final String? url,
      required final String? orden}) = _$_SocialModel;

  factory _SocialModel.fromJson(Map<String, dynamic> json) =
      _$_SocialModel.fromJson;

  @override
  String? get nombre;
  @override
  String? get mostrar;
  @override
  String? get url;
  @override
  String? get orden;
  @override
  @JsonKey(ignore: true)
  _$$_SocialModelCopyWith<_$_SocialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactModel _$ContactModelFromJson(Map<String, dynamic> json) {
  return _ContactModel.fromJson(json);
}

/// @nodoc
mixin _$ContactModel {
  String? get mostrar => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;
  String? get texto => throw _privateConstructorUsedError;
  String? get pais => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactModelCopyWith<ContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactModelCopyWith<$Res> {
  factory $ContactModelCopyWith(
          ContactModel value, $Res Function(ContactModel) then) =
      _$ContactModelCopyWithImpl<$Res, ContactModel>;
  @useResult
  $Res call({String? mostrar, String? data, String? texto, String? pais});
}

/// @nodoc
class _$ContactModelCopyWithImpl<$Res, $Val extends ContactModel>
    implements $ContactModelCopyWith<$Res> {
  _$ContactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostrar = freezed,
    Object? data = freezed,
    Object? texto = freezed,
    Object? pais = freezed,
  }) {
    return _then(_value.copyWith(
      mostrar: freezed == mostrar
          ? _value.mostrar
          : mostrar // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      texto: freezed == texto
          ? _value.texto
          : texto // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactModelCopyWith<$Res>
    implements $ContactModelCopyWith<$Res> {
  factory _$$_ContactModelCopyWith(
          _$_ContactModel value, $Res Function(_$_ContactModel) then) =
      __$$_ContactModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? mostrar, String? data, String? texto, String? pais});
}

/// @nodoc
class __$$_ContactModelCopyWithImpl<$Res>
    extends _$ContactModelCopyWithImpl<$Res, _$_ContactModel>
    implements _$$_ContactModelCopyWith<$Res> {
  __$$_ContactModelCopyWithImpl(
      _$_ContactModel _value, $Res Function(_$_ContactModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostrar = freezed,
    Object? data = freezed,
    Object? texto = freezed,
    Object? pais = freezed,
  }) {
    return _then(_$_ContactModel(
      mostrar: freezed == mostrar
          ? _value.mostrar
          : mostrar // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      texto: freezed == texto
          ? _value.texto
          : texto // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactModel implements _ContactModel {
  _$_ContactModel(
      {required this.mostrar, required this.data, this.texto, this.pais});

  factory _$_ContactModel.fromJson(Map<String, dynamic> json) =>
      _$$_ContactModelFromJson(json);

  @override
  final String? mostrar;
  @override
  final String? data;
  @override
  final String? texto;
  @override
  final String? pais;

  @override
  String toString() {
    return 'ContactModel(mostrar: $mostrar, data: $data, texto: $texto, pais: $pais)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactModel &&
            (identical(other.mostrar, mostrar) || other.mostrar == mostrar) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.texto, texto) || other.texto == texto) &&
            (identical(other.pais, pais) || other.pais == pais));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mostrar, data, texto, pais);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactModelCopyWith<_$_ContactModel> get copyWith =>
      __$$_ContactModelCopyWithImpl<_$_ContactModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactModelToJson(
      this,
    );
  }
}

abstract class _ContactModel implements ContactModel {
  factory _ContactModel(
      {required final String? mostrar,
      required final String? data,
      final String? texto,
      final String? pais}) = _$_ContactModel;

  factory _ContactModel.fromJson(Map<String, dynamic> json) =
      _$_ContactModel.fromJson;

  @override
  String? get mostrar;
  @override
  String? get data;
  @override
  String? get texto;
  @override
  String? get pais;
  @override
  @JsonKey(ignore: true)
  _$$_ContactModelCopyWith<_$_ContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}
