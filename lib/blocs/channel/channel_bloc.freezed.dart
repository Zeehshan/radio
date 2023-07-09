// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StreamingModel streaming, String appname, NetworkType networkType)
        loaded,
    required TResult Function(
            ChannelModel channel, String appname, NetworkType networkType)
        changed,
    required TResult Function(String content, String url) metadataLoaded,
    required TResult Function(MediaItem mediaItem) metaDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StreamingModel streaming, String appname, NetworkType networkType)?
        loaded,
    TResult? Function(
            ChannelModel channel, String appname, NetworkType networkType)?
        changed,
    TResult? Function(String content, String url)? metadataLoaded,
    TResult? Function(MediaItem mediaItem)? metaDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StreamingModel streaming, String appname, NetworkType networkType)?
        loaded,
    TResult Function(
            ChannelModel channel, String appname, NetworkType networkType)?
        changed,
    TResult Function(String content, String url)? metadataLoaded,
    TResult Function(MediaItem mediaItem)? metaDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChannelLoaded value) loaded,
    required TResult Function(ChannelChanged value) changed,
    required TResult Function(ChannelMetadataLoaded value) metadataLoaded,
    required TResult Function(ChannelMetadataChanged value) metaDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChannelLoaded value)? loaded,
    TResult? Function(ChannelChanged value)? changed,
    TResult? Function(ChannelMetadataLoaded value)? metadataLoaded,
    TResult? Function(ChannelMetadataChanged value)? metaDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChannelLoaded value)? loaded,
    TResult Function(ChannelChanged value)? changed,
    TResult Function(ChannelMetadataLoaded value)? metadataLoaded,
    TResult Function(ChannelMetadataChanged value)? metaDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelEventCopyWith<$Res> {
  factory $ChannelEventCopyWith(
          ChannelEvent value, $Res Function(ChannelEvent) then) =
      _$ChannelEventCopyWithImpl<$Res, ChannelEvent>;
}

/// @nodoc
class _$ChannelEventCopyWithImpl<$Res, $Val extends ChannelEvent>
    implements $ChannelEventCopyWith<$Res> {
  _$ChannelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChannelLoadedCopyWith<$Res> {
  factory _$$ChannelLoadedCopyWith(
          _$ChannelLoaded value, $Res Function(_$ChannelLoaded) then) =
      __$$ChannelLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {StreamingModel streaming, String appname, NetworkType networkType});

  $StreamingModelCopyWith<$Res> get streaming;
}

/// @nodoc
class __$$ChannelLoadedCopyWithImpl<$Res>
    extends _$ChannelEventCopyWithImpl<$Res, _$ChannelLoaded>
    implements _$$ChannelLoadedCopyWith<$Res> {
  __$$ChannelLoadedCopyWithImpl(
      _$ChannelLoaded _value, $Res Function(_$ChannelLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streaming = null,
    Object? appname = null,
    Object? networkType = null,
  }) {
    return _then(_$ChannelLoaded(
      streaming: null == streaming
          ? _value.streaming
          : streaming // ignore: cast_nullable_to_non_nullable
              as StreamingModel,
      appname: null == appname
          ? _value.appname
          : appname // ignore: cast_nullable_to_non_nullable
              as String,
      networkType: null == networkType
          ? _value.networkType
          : networkType // ignore: cast_nullable_to_non_nullable
              as NetworkType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StreamingModelCopyWith<$Res> get streaming {
    return $StreamingModelCopyWith<$Res>(_value.streaming, (value) {
      return _then(_value.copyWith(streaming: value));
    });
  }
}

/// @nodoc

class _$ChannelLoaded implements ChannelLoaded {
  const _$ChannelLoaded(
      {required this.streaming,
      required this.appname,
      required this.networkType});

  @override
  final StreamingModel streaming;
  @override
  final String appname;
  @override
  final NetworkType networkType;

  @override
  String toString() {
    return 'ChannelEvent.loaded(streaming: $streaming, appname: $appname, networkType: $networkType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelLoaded &&
            (identical(other.streaming, streaming) ||
                other.streaming == streaming) &&
            (identical(other.appname, appname) || other.appname == appname) &&
            (identical(other.networkType, networkType) ||
                other.networkType == networkType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, streaming, appname, networkType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelLoadedCopyWith<_$ChannelLoaded> get copyWith =>
      __$$ChannelLoadedCopyWithImpl<_$ChannelLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StreamingModel streaming, String appname, NetworkType networkType)
        loaded,
    required TResult Function(
            ChannelModel channel, String appname, NetworkType networkType)
        changed,
    required TResult Function(String content, String url) metadataLoaded,
    required TResult Function(MediaItem mediaItem) metaDataChanged,
  }) {
    return loaded(streaming, appname, networkType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StreamingModel streaming, String appname, NetworkType networkType)?
        loaded,
    TResult? Function(
            ChannelModel channel, String appname, NetworkType networkType)?
        changed,
    TResult? Function(String content, String url)? metadataLoaded,
    TResult? Function(MediaItem mediaItem)? metaDataChanged,
  }) {
    return loaded?.call(streaming, appname, networkType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StreamingModel streaming, String appname, NetworkType networkType)?
        loaded,
    TResult Function(
            ChannelModel channel, String appname, NetworkType networkType)?
        changed,
    TResult Function(String content, String url)? metadataLoaded,
    TResult Function(MediaItem mediaItem)? metaDataChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(streaming, appname, networkType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChannelLoaded value) loaded,
    required TResult Function(ChannelChanged value) changed,
    required TResult Function(ChannelMetadataLoaded value) metadataLoaded,
    required TResult Function(ChannelMetadataChanged value) metaDataChanged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChannelLoaded value)? loaded,
    TResult? Function(ChannelChanged value)? changed,
    TResult? Function(ChannelMetadataLoaded value)? metadataLoaded,
    TResult? Function(ChannelMetadataChanged value)? metaDataChanged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChannelLoaded value)? loaded,
    TResult Function(ChannelChanged value)? changed,
    TResult Function(ChannelMetadataLoaded value)? metadataLoaded,
    TResult Function(ChannelMetadataChanged value)? metaDataChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChannelLoaded implements ChannelEvent {
  const factory ChannelLoaded(
      {required final StreamingModel streaming,
      required final String appname,
      required final NetworkType networkType}) = _$ChannelLoaded;

  StreamingModel get streaming;
  String get appname;
  NetworkType get networkType;
  @JsonKey(ignore: true)
  _$$ChannelLoadedCopyWith<_$ChannelLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChannelChangedCopyWith<$Res> {
  factory _$$ChannelChangedCopyWith(
          _$ChannelChanged value, $Res Function(_$ChannelChanged) then) =
      __$$ChannelChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChannelModel channel, String appname, NetworkType networkType});

  $ChannelModelCopyWith<$Res> get channel;
}

/// @nodoc
class __$$ChannelChangedCopyWithImpl<$Res>
    extends _$ChannelEventCopyWithImpl<$Res, _$ChannelChanged>
    implements _$$ChannelChangedCopyWith<$Res> {
  __$$ChannelChangedCopyWithImpl(
      _$ChannelChanged _value, $Res Function(_$ChannelChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? appname = null,
    Object? networkType = null,
  }) {
    return _then(_$ChannelChanged(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelModel,
      appname: null == appname
          ? _value.appname
          : appname // ignore: cast_nullable_to_non_nullable
              as String,
      networkType: null == networkType
          ? _value.networkType
          : networkType // ignore: cast_nullable_to_non_nullable
              as NetworkType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelModelCopyWith<$Res> get channel {
    return $ChannelModelCopyWith<$Res>(_value.channel, (value) {
      return _then(_value.copyWith(channel: value));
    });
  }
}

/// @nodoc

class _$ChannelChanged implements ChannelChanged {
  const _$ChannelChanged(
      {required this.channel,
      required this.appname,
      required this.networkType});

  @override
  final ChannelModel channel;
  @override
  final String appname;
  @override
  final NetworkType networkType;

  @override
  String toString() {
    return 'ChannelEvent.changed(channel: $channel, appname: $appname, networkType: $networkType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelChanged &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.appname, appname) || other.appname == appname) &&
            (identical(other.networkType, networkType) ||
                other.networkType == networkType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channel, appname, networkType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelChangedCopyWith<_$ChannelChanged> get copyWith =>
      __$$ChannelChangedCopyWithImpl<_$ChannelChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StreamingModel streaming, String appname, NetworkType networkType)
        loaded,
    required TResult Function(
            ChannelModel channel, String appname, NetworkType networkType)
        changed,
    required TResult Function(String content, String url) metadataLoaded,
    required TResult Function(MediaItem mediaItem) metaDataChanged,
  }) {
    return changed(channel, appname, networkType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StreamingModel streaming, String appname, NetworkType networkType)?
        loaded,
    TResult? Function(
            ChannelModel channel, String appname, NetworkType networkType)?
        changed,
    TResult? Function(String content, String url)? metadataLoaded,
    TResult? Function(MediaItem mediaItem)? metaDataChanged,
  }) {
    return changed?.call(channel, appname, networkType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StreamingModel streaming, String appname, NetworkType networkType)?
        loaded,
    TResult Function(
            ChannelModel channel, String appname, NetworkType networkType)?
        changed,
    TResult Function(String content, String url)? metadataLoaded,
    TResult Function(MediaItem mediaItem)? metaDataChanged,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(channel, appname, networkType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChannelLoaded value) loaded,
    required TResult Function(ChannelChanged value) changed,
    required TResult Function(ChannelMetadataLoaded value) metadataLoaded,
    required TResult Function(ChannelMetadataChanged value) metaDataChanged,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChannelLoaded value)? loaded,
    TResult? Function(ChannelChanged value)? changed,
    TResult? Function(ChannelMetadataLoaded value)? metadataLoaded,
    TResult? Function(ChannelMetadataChanged value)? metaDataChanged,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChannelLoaded value)? loaded,
    TResult Function(ChannelChanged value)? changed,
    TResult Function(ChannelMetadataLoaded value)? metadataLoaded,
    TResult Function(ChannelMetadataChanged value)? metaDataChanged,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class ChannelChanged implements ChannelEvent {
  const factory ChannelChanged(
      {required final ChannelModel channel,
      required final String appname,
      required final NetworkType networkType}) = _$ChannelChanged;

  ChannelModel get channel;
  String get appname;
  NetworkType get networkType;
  @JsonKey(ignore: true)
  _$$ChannelChangedCopyWith<_$ChannelChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChannelMetadataLoadedCopyWith<$Res> {
  factory _$$ChannelMetadataLoadedCopyWith(_$ChannelMetadataLoaded value,
          $Res Function(_$ChannelMetadataLoaded) then) =
      __$$ChannelMetadataLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String content, String url});
}

/// @nodoc
class __$$ChannelMetadataLoadedCopyWithImpl<$Res>
    extends _$ChannelEventCopyWithImpl<$Res, _$ChannelMetadataLoaded>
    implements _$$ChannelMetadataLoadedCopyWith<$Res> {
  __$$ChannelMetadataLoadedCopyWithImpl(_$ChannelMetadataLoaded _value,
      $Res Function(_$ChannelMetadataLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? url = null,
  }) {
    return _then(_$ChannelMetadataLoaded(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChannelMetadataLoaded implements ChannelMetadataLoaded {
  const _$ChannelMetadataLoaded({required this.content, required this.url});

  @override
  final String content;
  @override
  final String url;

  @override
  String toString() {
    return 'ChannelEvent.metadataLoaded(content: $content, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelMetadataLoaded &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelMetadataLoadedCopyWith<_$ChannelMetadataLoaded> get copyWith =>
      __$$ChannelMetadataLoadedCopyWithImpl<_$ChannelMetadataLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StreamingModel streaming, String appname, NetworkType networkType)
        loaded,
    required TResult Function(
            ChannelModel channel, String appname, NetworkType networkType)
        changed,
    required TResult Function(String content, String url) metadataLoaded,
    required TResult Function(MediaItem mediaItem) metaDataChanged,
  }) {
    return metadataLoaded(content, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StreamingModel streaming, String appname, NetworkType networkType)?
        loaded,
    TResult? Function(
            ChannelModel channel, String appname, NetworkType networkType)?
        changed,
    TResult? Function(String content, String url)? metadataLoaded,
    TResult? Function(MediaItem mediaItem)? metaDataChanged,
  }) {
    return metadataLoaded?.call(content, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StreamingModel streaming, String appname, NetworkType networkType)?
        loaded,
    TResult Function(
            ChannelModel channel, String appname, NetworkType networkType)?
        changed,
    TResult Function(String content, String url)? metadataLoaded,
    TResult Function(MediaItem mediaItem)? metaDataChanged,
    required TResult orElse(),
  }) {
    if (metadataLoaded != null) {
      return metadataLoaded(content, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChannelLoaded value) loaded,
    required TResult Function(ChannelChanged value) changed,
    required TResult Function(ChannelMetadataLoaded value) metadataLoaded,
    required TResult Function(ChannelMetadataChanged value) metaDataChanged,
  }) {
    return metadataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChannelLoaded value)? loaded,
    TResult? Function(ChannelChanged value)? changed,
    TResult? Function(ChannelMetadataLoaded value)? metadataLoaded,
    TResult? Function(ChannelMetadataChanged value)? metaDataChanged,
  }) {
    return metadataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChannelLoaded value)? loaded,
    TResult Function(ChannelChanged value)? changed,
    TResult Function(ChannelMetadataLoaded value)? metadataLoaded,
    TResult Function(ChannelMetadataChanged value)? metaDataChanged,
    required TResult orElse(),
  }) {
    if (metadataLoaded != null) {
      return metadataLoaded(this);
    }
    return orElse();
  }
}

abstract class ChannelMetadataLoaded implements ChannelEvent {
  const factory ChannelMetadataLoaded(
      {required final String content,
      required final String url}) = _$ChannelMetadataLoaded;

  String get content;
  String get url;
  @JsonKey(ignore: true)
  _$$ChannelMetadataLoadedCopyWith<_$ChannelMetadataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChannelMetadataChangedCopyWith<$Res> {
  factory _$$ChannelMetadataChangedCopyWith(_$ChannelMetadataChanged value,
          $Res Function(_$ChannelMetadataChanged) then) =
      __$$ChannelMetadataChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({MediaItem mediaItem});
}

/// @nodoc
class __$$ChannelMetadataChangedCopyWithImpl<$Res>
    extends _$ChannelEventCopyWithImpl<$Res, _$ChannelMetadataChanged>
    implements _$$ChannelMetadataChangedCopyWith<$Res> {
  __$$ChannelMetadataChangedCopyWithImpl(_$ChannelMetadataChanged _value,
      $Res Function(_$ChannelMetadataChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaItem = null,
  }) {
    return _then(_$ChannelMetadataChanged(
      mediaItem: null == mediaItem
          ? _value.mediaItem
          : mediaItem // ignore: cast_nullable_to_non_nullable
              as MediaItem,
    ));
  }
}

/// @nodoc

class _$ChannelMetadataChanged implements ChannelMetadataChanged {
  const _$ChannelMetadataChanged({required this.mediaItem});

  @override
  final MediaItem mediaItem;

  @override
  String toString() {
    return 'ChannelEvent.metaDataChanged(mediaItem: $mediaItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelMetadataChanged &&
            (identical(other.mediaItem, mediaItem) ||
                other.mediaItem == mediaItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mediaItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelMetadataChangedCopyWith<_$ChannelMetadataChanged> get copyWith =>
      __$$ChannelMetadataChangedCopyWithImpl<_$ChannelMetadataChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StreamingModel streaming, String appname, NetworkType networkType)
        loaded,
    required TResult Function(
            ChannelModel channel, String appname, NetworkType networkType)
        changed,
    required TResult Function(String content, String url) metadataLoaded,
    required TResult Function(MediaItem mediaItem) metaDataChanged,
  }) {
    return metaDataChanged(mediaItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StreamingModel streaming, String appname, NetworkType networkType)?
        loaded,
    TResult? Function(
            ChannelModel channel, String appname, NetworkType networkType)?
        changed,
    TResult? Function(String content, String url)? metadataLoaded,
    TResult? Function(MediaItem mediaItem)? metaDataChanged,
  }) {
    return metaDataChanged?.call(mediaItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StreamingModel streaming, String appname, NetworkType networkType)?
        loaded,
    TResult Function(
            ChannelModel channel, String appname, NetworkType networkType)?
        changed,
    TResult Function(String content, String url)? metadataLoaded,
    TResult Function(MediaItem mediaItem)? metaDataChanged,
    required TResult orElse(),
  }) {
    if (metaDataChanged != null) {
      return metaDataChanged(mediaItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChannelLoaded value) loaded,
    required TResult Function(ChannelChanged value) changed,
    required TResult Function(ChannelMetadataLoaded value) metadataLoaded,
    required TResult Function(ChannelMetadataChanged value) metaDataChanged,
  }) {
    return metaDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChannelLoaded value)? loaded,
    TResult? Function(ChannelChanged value)? changed,
    TResult? Function(ChannelMetadataLoaded value)? metadataLoaded,
    TResult? Function(ChannelMetadataChanged value)? metaDataChanged,
  }) {
    return metaDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChannelLoaded value)? loaded,
    TResult Function(ChannelChanged value)? changed,
    TResult Function(ChannelMetadataLoaded value)? metadataLoaded,
    TResult Function(ChannelMetadataChanged value)? metaDataChanged,
    required TResult orElse(),
  }) {
    if (metaDataChanged != null) {
      return metaDataChanged(this);
    }
    return orElse();
  }
}

abstract class ChannelMetadataChanged implements ChannelEvent {
  const factory ChannelMetadataChanged({required final MediaItem mediaItem}) =
      _$ChannelMetadataChanged;

  MediaItem get mediaItem;
  @JsonKey(ignore: true)
  _$$ChannelMetadataChangedCopyWith<_$ChannelMetadataChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChannelState {
  List<ChannelModel>? get channels => throw _privateConstructorUsedError;
  ChannelModel? get channel => throw _privateConstructorUsedError;
  StreamingModel? get streaming => throw _privateConstructorUsedError;
  Map<String, String> get metaData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelStateCopyWith<ChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelStateCopyWith<$Res> {
  factory $ChannelStateCopyWith(
          ChannelState value, $Res Function(ChannelState) then) =
      _$ChannelStateCopyWithImpl<$Res, ChannelState>;
  @useResult
  $Res call(
      {List<ChannelModel>? channels,
      ChannelModel? channel,
      StreamingModel? streaming,
      Map<String, String> metaData});

  $ChannelModelCopyWith<$Res>? get channel;
  $StreamingModelCopyWith<$Res>? get streaming;
}

/// @nodoc
class _$ChannelStateCopyWithImpl<$Res, $Val extends ChannelState>
    implements $ChannelStateCopyWith<$Res> {
  _$ChannelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = freezed,
    Object? channel = freezed,
    Object? streaming = freezed,
    Object? metaData = null,
  }) {
    return _then(_value.copyWith(
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelModel?,
      streaming: freezed == streaming
          ? _value.streaming
          : streaming // ignore: cast_nullable_to_non_nullable
              as StreamingModel?,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelModelCopyWith<$Res>? get channel {
    if (_value.channel == null) {
      return null;
    }

    return $ChannelModelCopyWith<$Res>(_value.channel!, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
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
}

/// @nodoc
abstract class _$$_ChannelStateCopyWith<$Res>
    implements $ChannelStateCopyWith<$Res> {
  factory _$$_ChannelStateCopyWith(
          _$_ChannelState value, $Res Function(_$_ChannelState) then) =
      __$$_ChannelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChannelModel>? channels,
      ChannelModel? channel,
      StreamingModel? streaming,
      Map<String, String> metaData});

  @override
  $ChannelModelCopyWith<$Res>? get channel;
  @override
  $StreamingModelCopyWith<$Res>? get streaming;
}

/// @nodoc
class __$$_ChannelStateCopyWithImpl<$Res>
    extends _$ChannelStateCopyWithImpl<$Res, _$_ChannelState>
    implements _$$_ChannelStateCopyWith<$Res> {
  __$$_ChannelStateCopyWithImpl(
      _$_ChannelState _value, $Res Function(_$_ChannelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = freezed,
    Object? channel = freezed,
    Object? streaming = freezed,
    Object? metaData = null,
  }) {
    return _then(_$_ChannelState(
      channels: freezed == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelModel?,
      streaming: freezed == streaming
          ? _value.streaming
          : streaming // ignore: cast_nullable_to_non_nullable
              as StreamingModel?,
      metaData: null == metaData
          ? _value._metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_ChannelState implements _ChannelState {
  _$_ChannelState(
      {final List<ChannelModel>? channels,
      this.channel,
      this.streaming,
      required final Map<String, String> metaData})
      : _channels = channels,
        _metaData = metaData;

  final List<ChannelModel>? _channels;
  @override
  List<ChannelModel>? get channels {
    final value = _channels;
    if (value == null) return null;
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ChannelModel? channel;
  @override
  final StreamingModel? streaming;
  final Map<String, String> _metaData;
  @override
  Map<String, String> get metaData {
    if (_metaData is EqualUnmodifiableMapView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metaData);
  }

  @override
  String toString() {
    return 'ChannelState(channels: $channels, channel: $channel, streaming: $streaming, metaData: $metaData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelState &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.streaming, streaming) ||
                other.streaming == streaming) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_channels),
      channel,
      streaming,
      const DeepCollectionEquality().hash(_metaData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelStateCopyWith<_$_ChannelState> get copyWith =>
      __$$_ChannelStateCopyWithImpl<_$_ChannelState>(this, _$identity);
}

abstract class _ChannelState implements ChannelState {
  factory _ChannelState(
      {final List<ChannelModel>? channels,
      final ChannelModel? channel,
      final StreamingModel? streaming,
      required final Map<String, String> metaData}) = _$_ChannelState;

  @override
  List<ChannelModel>? get channels;
  @override
  ChannelModel? get channel;
  @override
  StreamingModel? get streaming;
  @override
  Map<String, String> get metaData;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelStateCopyWith<_$_ChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}
