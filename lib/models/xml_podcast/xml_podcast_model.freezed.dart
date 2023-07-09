// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'xml_podcast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

XmlPodcastModel _$XmlPodcastModelFromJson(Map<String, dynamic> json) {
  return _XmlPodcastModel.fromJson(json);
}

/// @nodoc
mixin _$XmlPodcastModel {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get pubDate => throw _privateConstructorUsedError;
  XmlPodcastEnclosureModel get enclosure => throw _privateConstructorUsedError;
  @JsonKey(name: 'itunes:duration')
  String get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'itunes:episodeType')
  String get episodeType => throw _privateConstructorUsedError;
  @JsonConvertToImage()
  @JsonKey(name: 'itunes:image')
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $XmlPodcastModelCopyWith<XmlPodcastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XmlPodcastModelCopyWith<$Res> {
  factory $XmlPodcastModelCopyWith(
          XmlPodcastModel value, $Res Function(XmlPodcastModel) then) =
      _$XmlPodcastModelCopyWithImpl<$Res, XmlPodcastModel>;
  @useResult
  $Res call(
      {String title,
      String link,
      String description,
      String pubDate,
      XmlPodcastEnclosureModel enclosure,
      @JsonKey(name: 'itunes:duration') String duration,
      @JsonKey(name: 'itunes:episodeType') String episodeType,
      @JsonConvertToImage() @JsonKey(name: 'itunes:image') String image});

  $XmlPodcastEnclosureModelCopyWith<$Res> get enclosure;
}

/// @nodoc
class _$XmlPodcastModelCopyWithImpl<$Res, $Val extends XmlPodcastModel>
    implements $XmlPodcastModelCopyWith<$Res> {
  _$XmlPodcastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? description = null,
    Object? pubDate = null,
    Object? enclosure = null,
    Object? duration = null,
    Object? episodeType = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pubDate: null == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String,
      enclosure: null == enclosure
          ? _value.enclosure
          : enclosure // ignore: cast_nullable_to_non_nullable
              as XmlPodcastEnclosureModel,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      episodeType: null == episodeType
          ? _value.episodeType
          : episodeType // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $XmlPodcastEnclosureModelCopyWith<$Res> get enclosure {
    return $XmlPodcastEnclosureModelCopyWith<$Res>(_value.enclosure, (value) {
      return _then(_value.copyWith(enclosure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_XmlPodcastModelCopyWith<$Res>
    implements $XmlPodcastModelCopyWith<$Res> {
  factory _$$_XmlPodcastModelCopyWith(
          _$_XmlPodcastModel value, $Res Function(_$_XmlPodcastModel) then) =
      __$$_XmlPodcastModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String link,
      String description,
      String pubDate,
      XmlPodcastEnclosureModel enclosure,
      @JsonKey(name: 'itunes:duration') String duration,
      @JsonKey(name: 'itunes:episodeType') String episodeType,
      @JsonConvertToImage() @JsonKey(name: 'itunes:image') String image});

  @override
  $XmlPodcastEnclosureModelCopyWith<$Res> get enclosure;
}

/// @nodoc
class __$$_XmlPodcastModelCopyWithImpl<$Res>
    extends _$XmlPodcastModelCopyWithImpl<$Res, _$_XmlPodcastModel>
    implements _$$_XmlPodcastModelCopyWith<$Res> {
  __$$_XmlPodcastModelCopyWithImpl(
      _$_XmlPodcastModel _value, $Res Function(_$_XmlPodcastModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? description = null,
    Object? pubDate = null,
    Object? enclosure = null,
    Object? duration = null,
    Object? episodeType = null,
    Object? image = null,
  }) {
    return _then(_$_XmlPodcastModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pubDate: null == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String,
      enclosure: null == enclosure
          ? _value.enclosure
          : enclosure // ignore: cast_nullable_to_non_nullable
              as XmlPodcastEnclosureModel,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      episodeType: null == episodeType
          ? _value.episodeType
          : episodeType // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_XmlPodcastModel implements _XmlPodcastModel {
  _$_XmlPodcastModel(
      {required this.title,
      required this.link,
      required this.description,
      required this.pubDate,
      required this.enclosure,
      @JsonKey(name: 'itunes:duration')
          required this.duration,
      @JsonKey(name: 'itunes:episodeType')
          required this.episodeType,
      @JsonConvertToImage()
      @JsonKey(name: 'itunes:image')
          required this.image});

  factory _$_XmlPodcastModel.fromJson(Map<String, dynamic> json) =>
      _$$_XmlPodcastModelFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String description;
  @override
  final String pubDate;
  @override
  final XmlPodcastEnclosureModel enclosure;
  @override
  @JsonKey(name: 'itunes:duration')
  final String duration;
  @override
  @JsonKey(name: 'itunes:episodeType')
  final String episodeType;
  @override
  @JsonConvertToImage()
  @JsonKey(name: 'itunes:image')
  final String image;

  @override
  String toString() {
    return 'XmlPodcastModel(title: $title, link: $link, description: $description, pubDate: $pubDate, enclosure: $enclosure, duration: $duration, episodeType: $episodeType, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_XmlPodcastModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.enclosure, enclosure) ||
                other.enclosure == enclosure) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.episodeType, episodeType) ||
                other.episodeType == episodeType) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, description,
      pubDate, enclosure, duration, episodeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_XmlPodcastModelCopyWith<_$_XmlPodcastModel> get copyWith =>
      __$$_XmlPodcastModelCopyWithImpl<_$_XmlPodcastModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_XmlPodcastModelToJson(
      this,
    );
  }
}

abstract class _XmlPodcastModel implements XmlPodcastModel {
  factory _XmlPodcastModel(
      {required final String title,
      required final String link,
      required final String description,
      required final String pubDate,
      required final XmlPodcastEnclosureModel enclosure,
      @JsonKey(name: 'itunes:duration')
          required final String duration,
      @JsonKey(name: 'itunes:episodeType')
          required final String episodeType,
      @JsonConvertToImage()
      @JsonKey(name: 'itunes:image')
          required final String image}) = _$_XmlPodcastModel;

  factory _XmlPodcastModel.fromJson(Map<String, dynamic> json) =
      _$_XmlPodcastModel.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String get description;
  @override
  String get pubDate;
  @override
  XmlPodcastEnclosureModel get enclosure;
  @override
  @JsonKey(name: 'itunes:duration')
  String get duration;
  @override
  @JsonKey(name: 'itunes:episodeType')
  String get episodeType;
  @override
  @JsonConvertToImage()
  @JsonKey(name: 'itunes:image')
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_XmlPodcastModelCopyWith<_$_XmlPodcastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

XmlPodcastEnclosureModel _$XmlPodcastEnclosureModelFromJson(
    Map<String, dynamic> json) {
  return _XmlPodcastEnclosureModel.fromJson(json);
}

/// @nodoc
mixin _$XmlPodcastEnclosureModel {
  @JsonKey(name: '_url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: '_type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: '_length')
  String get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $XmlPodcastEnclosureModelCopyWith<XmlPodcastEnclosureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XmlPodcastEnclosureModelCopyWith<$Res> {
  factory $XmlPodcastEnclosureModelCopyWith(XmlPodcastEnclosureModel value,
          $Res Function(XmlPodcastEnclosureModel) then) =
      _$XmlPodcastEnclosureModelCopyWithImpl<$Res, XmlPodcastEnclosureModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_url') String url,
      @JsonKey(name: '_type') String type,
      @JsonKey(name: '_length') String length});
}

/// @nodoc
class _$XmlPodcastEnclosureModelCopyWithImpl<$Res,
        $Val extends XmlPodcastEnclosureModel>
    implements $XmlPodcastEnclosureModelCopyWith<$Res> {
  _$XmlPodcastEnclosureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_XmlPodcastEnclosureModelCopyWith<$Res>
    implements $XmlPodcastEnclosureModelCopyWith<$Res> {
  factory _$$_XmlPodcastEnclosureModelCopyWith(
          _$_XmlPodcastEnclosureModel value,
          $Res Function(_$_XmlPodcastEnclosureModel) then) =
      __$$_XmlPodcastEnclosureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_url') String url,
      @JsonKey(name: '_type') String type,
      @JsonKey(name: '_length') String length});
}

/// @nodoc
class __$$_XmlPodcastEnclosureModelCopyWithImpl<$Res>
    extends _$XmlPodcastEnclosureModelCopyWithImpl<$Res,
        _$_XmlPodcastEnclosureModel>
    implements _$$_XmlPodcastEnclosureModelCopyWith<$Res> {
  __$$_XmlPodcastEnclosureModelCopyWithImpl(_$_XmlPodcastEnclosureModel _value,
      $Res Function(_$_XmlPodcastEnclosureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
    Object? length = null,
  }) {
    return _then(_$_XmlPodcastEnclosureModel(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_XmlPodcastEnclosureModel implements _XmlPodcastEnclosureModel {
  _$_XmlPodcastEnclosureModel(
      {@JsonKey(name: '_url') required this.url,
      @JsonKey(name: '_type') required this.type,
      @JsonKey(name: '_length') required this.length});

  factory _$_XmlPodcastEnclosureModel.fromJson(Map<String, dynamic> json) =>
      _$$_XmlPodcastEnclosureModelFromJson(json);

  @override
  @JsonKey(name: '_url')
  final String url;
  @override
  @JsonKey(name: '_type')
  final String type;
  @override
  @JsonKey(name: '_length')
  final String length;

  @override
  String toString() {
    return 'XmlPodcastEnclosureModel(url: $url, type: $type, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_XmlPodcastEnclosureModel &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, type, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_XmlPodcastEnclosureModelCopyWith<_$_XmlPodcastEnclosureModel>
      get copyWith => __$$_XmlPodcastEnclosureModelCopyWithImpl<
          _$_XmlPodcastEnclosureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_XmlPodcastEnclosureModelToJson(
      this,
    );
  }
}

abstract class _XmlPodcastEnclosureModel implements XmlPodcastEnclosureModel {
  factory _XmlPodcastEnclosureModel(
          {@JsonKey(name: '_url') required final String url,
          @JsonKey(name: '_type') required final String type,
          @JsonKey(name: '_length') required final String length}) =
      _$_XmlPodcastEnclosureModel;

  factory _XmlPodcastEnclosureModel.fromJson(Map<String, dynamic> json) =
      _$_XmlPodcastEnclosureModel.fromJson;

  @override
  @JsonKey(name: '_url')
  String get url;
  @override
  @JsonKey(name: '_type')
  String get type;
  @override
  @JsonKey(name: '_length')
  String get length;
  @override
  @JsonKey(ignore: true)
  _$$_XmlPodcastEnclosureModelCopyWith<_$_XmlPodcastEnclosureModel>
      get copyWith => throw _privateConstructorUsedError;
}
