// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcast_channel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PodcastChannelModel _$PodcastChannelModelFromJson(Map<String, dynamic> json) {
  return _PodcastChannelModel.fromJson(json);
}

/// @nodoc
mixin _$PodcastChannelModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonToImageForChannel()
  String get image => throw _privateConstructorUsedError;
  List<XmlPodcastModel> get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastChannelModelCopyWith<PodcastChannelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastChannelModelCopyWith<$Res> {
  factory $PodcastChannelModelCopyWith(
          PodcastChannelModel value, $Res Function(PodcastChannelModel) then) =
      _$PodcastChannelModelCopyWithImpl<$Res, PodcastChannelModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      @JsonToImageForChannel() String image,
      List<XmlPodcastModel> item});
}

/// @nodoc
class _$PodcastChannelModelCopyWithImpl<$Res, $Val extends PodcastChannelModel>
    implements $PodcastChannelModelCopyWith<$Res> {
  _$PodcastChannelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<XmlPodcastModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PodcastChannelModelCopyWith<$Res>
    implements $PodcastChannelModelCopyWith<$Res> {
  factory _$$_PodcastChannelModelCopyWith(_$_PodcastChannelModel value,
          $Res Function(_$_PodcastChannelModel) then) =
      __$$_PodcastChannelModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      @JsonToImageForChannel() String image,
      List<XmlPodcastModel> item});
}

/// @nodoc
class __$$_PodcastChannelModelCopyWithImpl<$Res>
    extends _$PodcastChannelModelCopyWithImpl<$Res, _$_PodcastChannelModel>
    implements _$$_PodcastChannelModelCopyWith<$Res> {
  __$$_PodcastChannelModelCopyWithImpl(_$_PodcastChannelModel _value,
      $Res Function(_$_PodcastChannelModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? item = null,
  }) {
    return _then(_$_PodcastChannelModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<XmlPodcastModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PodcastChannelModel implements _PodcastChannelModel {
  _$_PodcastChannelModel(
      {required this.title,
      required this.description,
      @JsonToImageForChannel() required this.image,
      required final List<XmlPodcastModel> item})
      : _item = item;

  factory _$_PodcastChannelModel.fromJson(Map<String, dynamic> json) =>
      _$$_PodcastChannelModelFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonToImageForChannel()
  final String image;
  final List<XmlPodcastModel> _item;
  @override
  List<XmlPodcastModel> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  String toString() {
    return 'PodcastChannelModel(title: $title, description: $description, image: $image, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PodcastChannelModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, image,
      const DeepCollectionEquality().hash(_item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PodcastChannelModelCopyWith<_$_PodcastChannelModel> get copyWith =>
      __$$_PodcastChannelModelCopyWithImpl<_$_PodcastChannelModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PodcastChannelModelToJson(
      this,
    );
  }
}

abstract class _PodcastChannelModel implements PodcastChannelModel {
  factory _PodcastChannelModel(
      {required final String title,
      required final String description,
      @JsonToImageForChannel() required final String image,
      required final List<XmlPodcastModel> item}) = _$_PodcastChannelModel;

  factory _PodcastChannelModel.fromJson(Map<String, dynamic> json) =
      _$_PodcastChannelModel.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonToImageForChannel()
  String get image;
  @override
  List<XmlPodcastModel> get item;
  @override
  @JsonKey(ignore: true)
  _$$_PodcastChannelModelCopyWith<_$_PodcastChannelModel> get copyWith =>
      throw _privateConstructorUsedError;
}
