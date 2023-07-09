// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsDataModel _$NewsDataModelFromJson(Map<String, dynamic> json) {
  return _NewsDataModel.fromJson(json);
}

/// @nodoc
mixin _$NewsDataModel {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get pubDate => throw _privateConstructorUsedError;
  @JsonToImageFromEnclouser()
  String get enclosure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDataModelCopyWith<NewsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDataModelCopyWith<$Res> {
  factory $NewsDataModelCopyWith(
          NewsDataModel value, $Res Function(NewsDataModel) then) =
      _$NewsDataModelCopyWithImpl<$Res, NewsDataModel>;
  @useResult
  $Res call(
      {String title,
      String link,
      String description,
      String pubDate,
      @JsonToImageFromEnclouser() String enclosure});
}

/// @nodoc
class _$NewsDataModelCopyWithImpl<$Res, $Val extends NewsDataModel>
    implements $NewsDataModelCopyWith<$Res> {
  _$NewsDataModelCopyWithImpl(this._value, this._then);

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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsDataModelCopyWith<$Res>
    implements $NewsDataModelCopyWith<$Res> {
  factory _$$_NewsDataModelCopyWith(
          _$_NewsDataModel value, $Res Function(_$_NewsDataModel) then) =
      __$$_NewsDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String link,
      String description,
      String pubDate,
      @JsonToImageFromEnclouser() String enclosure});
}

/// @nodoc
class __$$_NewsDataModelCopyWithImpl<$Res>
    extends _$NewsDataModelCopyWithImpl<$Res, _$_NewsDataModel>
    implements _$$_NewsDataModelCopyWith<$Res> {
  __$$_NewsDataModelCopyWithImpl(
      _$_NewsDataModel _value, $Res Function(_$_NewsDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? description = null,
    Object? pubDate = null,
    Object? enclosure = null,
  }) {
    return _then(_$_NewsDataModel(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsDataModel implements _NewsDataModel {
  _$_NewsDataModel(
      {required this.title,
      required this.link,
      required this.description,
      required this.pubDate,
      @JsonToImageFromEnclouser() required this.enclosure});

  factory _$_NewsDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDataModelFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String description;
  @override
  final String pubDate;
  @override
  @JsonToImageFromEnclouser()
  final String enclosure;

  @override
  String toString() {
    return 'NewsDataModel(title: $title, link: $link, description: $description, pubDate: $pubDate, enclosure: $enclosure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsDataModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.enclosure, enclosure) ||
                other.enclosure == enclosure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, link, description, pubDate, enclosure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsDataModelCopyWith<_$_NewsDataModel> get copyWith =>
      __$$_NewsDataModelCopyWithImpl<_$_NewsDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDataModelToJson(
      this,
    );
  }
}

abstract class _NewsDataModel implements NewsDataModel {
  factory _NewsDataModel(
          {required final String title,
          required final String link,
          required final String description,
          required final String pubDate,
          @JsonToImageFromEnclouser() required final String enclosure}) =
      _$_NewsDataModel;

  factory _NewsDataModel.fromJson(Map<String, dynamic> json) =
      _$_NewsDataModel.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String get description;
  @override
  String get pubDate;
  @override
  @JsonToImageFromEnclouser()
  String get enclosure;
  @override
  @JsonKey(ignore: true)
  _$$_NewsDataModelCopyWith<_$_NewsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
