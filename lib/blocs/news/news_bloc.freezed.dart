// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  String get link => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEventCopyWith<NewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsLoadedCopyWith<$Res> implements $NewsEventCopyWith<$Res> {
  factory _$$NewsLoadedCopyWith(
          _$NewsLoaded value, $Res Function(_$NewsLoaded) then) =
      __$$NewsLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$NewsLoadedCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$NewsLoaded>
    implements _$$NewsLoadedCopyWith<$Res> {
  __$$NewsLoadedCopyWithImpl(
      _$NewsLoaded _value, $Res Function(_$NewsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$NewsLoaded(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewsLoaded implements NewsLoaded {
  const _$NewsLoaded({required this.link});

  @override
  final String link;

  @override
  String toString() {
    return 'NewsEvent.loaded(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsLoaded &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsLoadedCopyWith<_$NewsLoaded> get copyWith =>
      __$$NewsLoadedCopyWithImpl<_$NewsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) loaded,
  }) {
    return loaded(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? loaded,
  }) {
    return loaded?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NewsLoaded implements NewsEvent {
  const factory NewsLoaded({required final String link}) = _$NewsLoaded;

  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$NewsLoadedCopyWith<_$NewsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsState {
  List<NewsDataModel> get news => throw _privateConstructorUsedError;
  BlocStateManageUIModel get manageUI => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call({List<NewsDataModel> news, BlocStateManageUIModel manageUI});

  $BlocStateManageUIModelCopyWith<$Res> get manageUI;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? manageUI = null,
  }) {
    return _then(_value.copyWith(
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsDataModel>,
      manageUI: null == manageUI
          ? _value.manageUI
          : manageUI // ignore: cast_nullable_to_non_nullable
              as BlocStateManageUIModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlocStateManageUIModelCopyWith<$Res> get manageUI {
    return $BlocStateManageUIModelCopyWith<$Res>(_value.manageUI, (value) {
      return _then(_value.copyWith(manageUI: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$$_NewsStateCopyWith(
          _$_NewsState value, $Res Function(_$_NewsState) then) =
      __$$_NewsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsDataModel> news, BlocStateManageUIModel manageUI});

  @override
  $BlocStateManageUIModelCopyWith<$Res> get manageUI;
}

/// @nodoc
class __$$_NewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$_NewsState>
    implements _$$_NewsStateCopyWith<$Res> {
  __$$_NewsStateCopyWithImpl(
      _$_NewsState _value, $Res Function(_$_NewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? manageUI = null,
  }) {
    return _then(_$_NewsState(
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsDataModel>,
      manageUI: null == manageUI
          ? _value.manageUI
          : manageUI // ignore: cast_nullable_to_non_nullable
              as BlocStateManageUIModel,
    ));
  }
}

/// @nodoc

class _$_NewsState implements _NewsState {
  _$_NewsState(
      {required final List<NewsDataModel> news, required this.manageUI})
      : _news = news;

  final List<NewsDataModel> _news;
  @override
  List<NewsDataModel> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  final BlocStateManageUIModel manageUI;

  @override
  String toString() {
    return 'NewsState(news: $news, manageUI: $manageUI)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsState &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            (identical(other.manageUI, manageUI) ||
                other.manageUI == manageUI));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_news), manageUI);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsStateCopyWith<_$_NewsState> get copyWith =>
      __$$_NewsStateCopyWithImpl<_$_NewsState>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  factory _NewsState(
      {required final List<NewsDataModel> news,
      required final BlocStateManageUIModel manageUI}) = _$_NewsState;

  @override
  List<NewsDataModel> get news;
  @override
  BlocStateManageUIModel get manageUI;
  @override
  @JsonKey(ignore: true)
  _$$_NewsStateCopyWith<_$_NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
