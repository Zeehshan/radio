// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PodcastEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PodcastsModel podCast) loaded,
    required TResult Function(PodCastModel selectedPodCast) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PodcastsModel podCast)? loaded,
    TResult? Function(PodCastModel selectedPodCast)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PodcastsModel podCast)? loaded,
    TResult Function(PodCastModel selectedPodCast)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PodcastLoaded value) loaded,
    required TResult Function(PodcastChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PodcastLoaded value)? loaded,
    TResult? Function(PodcastChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PodcastLoaded value)? loaded,
    TResult Function(PodcastChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastEventCopyWith<$Res> {
  factory $PodcastEventCopyWith(
          PodcastEvent value, $Res Function(PodcastEvent) then) =
      _$PodcastEventCopyWithImpl<$Res, PodcastEvent>;
}

/// @nodoc
class _$PodcastEventCopyWithImpl<$Res, $Val extends PodcastEvent>
    implements $PodcastEventCopyWith<$Res> {
  _$PodcastEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PodcastLoadedCopyWith<$Res> {
  factory _$$PodcastLoadedCopyWith(
          _$PodcastLoaded value, $Res Function(_$PodcastLoaded) then) =
      __$$PodcastLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({PodcastsModel podCast});

  $PodcastsModelCopyWith<$Res> get podCast;
}

/// @nodoc
class __$$PodcastLoadedCopyWithImpl<$Res>
    extends _$PodcastEventCopyWithImpl<$Res, _$PodcastLoaded>
    implements _$$PodcastLoadedCopyWith<$Res> {
  __$$PodcastLoadedCopyWithImpl(
      _$PodcastLoaded _value, $Res Function(_$PodcastLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podCast = null,
  }) {
    return _then(_$PodcastLoaded(
      podCast: null == podCast
          ? _value.podCast
          : podCast // ignore: cast_nullable_to_non_nullable
              as PodcastsModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PodcastsModelCopyWith<$Res> get podCast {
    return $PodcastsModelCopyWith<$Res>(_value.podCast, (value) {
      return _then(_value.copyWith(podCast: value));
    });
  }
}

/// @nodoc

class _$PodcastLoaded implements PodcastLoaded {
  const _$PodcastLoaded({required this.podCast});

  @override
  final PodcastsModel podCast;

  @override
  String toString() {
    return 'PodcastEvent.loaded(podCast: $podCast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastLoaded &&
            (identical(other.podCast, podCast) || other.podCast == podCast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, podCast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastLoadedCopyWith<_$PodcastLoaded> get copyWith =>
      __$$PodcastLoadedCopyWithImpl<_$PodcastLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PodcastsModel podCast) loaded,
    required TResult Function(PodCastModel selectedPodCast) changed,
  }) {
    return loaded(podCast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PodcastsModel podCast)? loaded,
    TResult? Function(PodCastModel selectedPodCast)? changed,
  }) {
    return loaded?.call(podCast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PodcastsModel podCast)? loaded,
    TResult Function(PodCastModel selectedPodCast)? changed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(podCast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PodcastLoaded value) loaded,
    required TResult Function(PodcastChanged value) changed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PodcastLoaded value)? loaded,
    TResult? Function(PodcastChanged value)? changed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PodcastLoaded value)? loaded,
    TResult Function(PodcastChanged value)? changed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PodcastLoaded implements PodcastEvent {
  const factory PodcastLoaded({required final PodcastsModel podCast}) =
      _$PodcastLoaded;

  PodcastsModel get podCast;
  @JsonKey(ignore: true)
  _$$PodcastLoadedCopyWith<_$PodcastLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PodcastChangedCopyWith<$Res> {
  factory _$$PodcastChangedCopyWith(
          _$PodcastChanged value, $Res Function(_$PodcastChanged) then) =
      __$$PodcastChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({PodCastModel selectedPodCast});

  $PodCastModelCopyWith<$Res> get selectedPodCast;
}

/// @nodoc
class __$$PodcastChangedCopyWithImpl<$Res>
    extends _$PodcastEventCopyWithImpl<$Res, _$PodcastChanged>
    implements _$$PodcastChangedCopyWith<$Res> {
  __$$PodcastChangedCopyWithImpl(
      _$PodcastChanged _value, $Res Function(_$PodcastChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPodCast = null,
  }) {
    return _then(_$PodcastChanged(
      selectedPodCast: null == selectedPodCast
          ? _value.selectedPodCast
          : selectedPodCast // ignore: cast_nullable_to_non_nullable
              as PodCastModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PodCastModelCopyWith<$Res> get selectedPodCast {
    return $PodCastModelCopyWith<$Res>(_value.selectedPodCast, (value) {
      return _then(_value.copyWith(selectedPodCast: value));
    });
  }
}

/// @nodoc

class _$PodcastChanged implements PodcastChanged {
  const _$PodcastChanged({required this.selectedPodCast});

  @override
  final PodCastModel selectedPodCast;

  @override
  String toString() {
    return 'PodcastEvent.changed(selectedPodCast: $selectedPodCast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastChanged &&
            (identical(other.selectedPodCast, selectedPodCast) ||
                other.selectedPodCast == selectedPodCast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPodCast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastChangedCopyWith<_$PodcastChanged> get copyWith =>
      __$$PodcastChangedCopyWithImpl<_$PodcastChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PodcastsModel podCast) loaded,
    required TResult Function(PodCastModel selectedPodCast) changed,
  }) {
    return changed(selectedPodCast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PodcastsModel podCast)? loaded,
    TResult? Function(PodCastModel selectedPodCast)? changed,
  }) {
    return changed?.call(selectedPodCast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PodcastsModel podCast)? loaded,
    TResult Function(PodCastModel selectedPodCast)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(selectedPodCast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PodcastLoaded value) loaded,
    required TResult Function(PodcastChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PodcastLoaded value)? loaded,
    TResult? Function(PodcastChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PodcastLoaded value)? loaded,
    TResult Function(PodcastChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class PodcastChanged implements PodcastEvent {
  const factory PodcastChanged({required final PodCastModel selectedPodCast}) =
      _$PodcastChanged;

  PodCastModel get selectedPodCast;
  @JsonKey(ignore: true)
  _$$PodcastChangedCopyWith<_$PodcastChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PodcastState {
  BlocStateManageUIModel get manageUI => throw _privateConstructorUsedError;
  PodcastsModel? get pocast => throw _privateConstructorUsedError;
  PodCastModel? get selectedPodCast => throw _privateConstructorUsedError;
  Map<String, PodcastChannelModel?> get podcasts =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PodcastStateCopyWith<PodcastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastStateCopyWith<$Res> {
  factory $PodcastStateCopyWith(
          PodcastState value, $Res Function(PodcastState) then) =
      _$PodcastStateCopyWithImpl<$Res, PodcastState>;
  @useResult
  $Res call(
      {BlocStateManageUIModel manageUI,
      PodcastsModel? pocast,
      PodCastModel? selectedPodCast,
      Map<String, PodcastChannelModel?> podcasts});

  $BlocStateManageUIModelCopyWith<$Res> get manageUI;
  $PodcastsModelCopyWith<$Res>? get pocast;
  $PodCastModelCopyWith<$Res>? get selectedPodCast;
}

/// @nodoc
class _$PodcastStateCopyWithImpl<$Res, $Val extends PodcastState>
    implements $PodcastStateCopyWith<$Res> {
  _$PodcastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manageUI = null,
    Object? pocast = freezed,
    Object? selectedPodCast = freezed,
    Object? podcasts = null,
  }) {
    return _then(_value.copyWith(
      manageUI: null == manageUI
          ? _value.manageUI
          : manageUI // ignore: cast_nullable_to_non_nullable
              as BlocStateManageUIModel,
      pocast: freezed == pocast
          ? _value.pocast
          : pocast // ignore: cast_nullable_to_non_nullable
              as PodcastsModel?,
      selectedPodCast: freezed == selectedPodCast
          ? _value.selectedPodCast
          : selectedPodCast // ignore: cast_nullable_to_non_nullable
              as PodCastModel?,
      podcasts: null == podcasts
          ? _value.podcasts
          : podcasts // ignore: cast_nullable_to_non_nullable
              as Map<String, PodcastChannelModel?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlocStateManageUIModelCopyWith<$Res> get manageUI {
    return $BlocStateManageUIModelCopyWith<$Res>(_value.manageUI, (value) {
      return _then(_value.copyWith(manageUI: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PodcastsModelCopyWith<$Res>? get pocast {
    if (_value.pocast == null) {
      return null;
    }

    return $PodcastsModelCopyWith<$Res>(_value.pocast!, (value) {
      return _then(_value.copyWith(pocast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PodCastModelCopyWith<$Res>? get selectedPodCast {
    if (_value.selectedPodCast == null) {
      return null;
    }

    return $PodCastModelCopyWith<$Res>(_value.selectedPodCast!, (value) {
      return _then(_value.copyWith(selectedPodCast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PodcastStateCopyWith<$Res>
    implements $PodcastStateCopyWith<$Res> {
  factory _$$_PodcastStateCopyWith(
          _$_PodcastState value, $Res Function(_$_PodcastState) then) =
      __$$_PodcastStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStateManageUIModel manageUI,
      PodcastsModel? pocast,
      PodCastModel? selectedPodCast,
      Map<String, PodcastChannelModel?> podcasts});

  @override
  $BlocStateManageUIModelCopyWith<$Res> get manageUI;
  @override
  $PodcastsModelCopyWith<$Res>? get pocast;
  @override
  $PodCastModelCopyWith<$Res>? get selectedPodCast;
}

/// @nodoc
class __$$_PodcastStateCopyWithImpl<$Res>
    extends _$PodcastStateCopyWithImpl<$Res, _$_PodcastState>
    implements _$$_PodcastStateCopyWith<$Res> {
  __$$_PodcastStateCopyWithImpl(
      _$_PodcastState _value, $Res Function(_$_PodcastState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manageUI = null,
    Object? pocast = freezed,
    Object? selectedPodCast = freezed,
    Object? podcasts = null,
  }) {
    return _then(_$_PodcastState(
      manageUI: null == manageUI
          ? _value.manageUI
          : manageUI // ignore: cast_nullable_to_non_nullable
              as BlocStateManageUIModel,
      pocast: freezed == pocast
          ? _value.pocast
          : pocast // ignore: cast_nullable_to_non_nullable
              as PodcastsModel?,
      selectedPodCast: freezed == selectedPodCast
          ? _value.selectedPodCast
          : selectedPodCast // ignore: cast_nullable_to_non_nullable
              as PodCastModel?,
      podcasts: null == podcasts
          ? _value._podcasts
          : podcasts // ignore: cast_nullable_to_non_nullable
              as Map<String, PodcastChannelModel?>,
    ));
  }
}

/// @nodoc

class _$_PodcastState implements _PodcastState {
  _$_PodcastState(
      {required this.manageUI,
      this.pocast,
      this.selectedPodCast,
      required final Map<String, PodcastChannelModel?> podcasts})
      : _podcasts = podcasts;

  @override
  final BlocStateManageUIModel manageUI;
  @override
  final PodcastsModel? pocast;
  @override
  final PodCastModel? selectedPodCast;
  final Map<String, PodcastChannelModel?> _podcasts;
  @override
  Map<String, PodcastChannelModel?> get podcasts {
    if (_podcasts is EqualUnmodifiableMapView) return _podcasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_podcasts);
  }

  @override
  String toString() {
    return 'PodcastState(manageUI: $manageUI, pocast: $pocast, selectedPodCast: $selectedPodCast, podcasts: $podcasts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PodcastState &&
            (identical(other.manageUI, manageUI) ||
                other.manageUI == manageUI) &&
            (identical(other.pocast, pocast) || other.pocast == pocast) &&
            (identical(other.selectedPodCast, selectedPodCast) ||
                other.selectedPodCast == selectedPodCast) &&
            const DeepCollectionEquality().equals(other._podcasts, _podcasts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manageUI, pocast,
      selectedPodCast, const DeepCollectionEquality().hash(_podcasts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PodcastStateCopyWith<_$_PodcastState> get copyWith =>
      __$$_PodcastStateCopyWithImpl<_$_PodcastState>(this, _$identity);
}

abstract class _PodcastState implements PodcastState {
  factory _PodcastState(
          {required final BlocStateManageUIModel manageUI,
          final PodcastsModel? pocast,
          final PodCastModel? selectedPodCast,
          required final Map<String, PodcastChannelModel?> podcasts}) =
      _$_PodcastState;

  @override
  BlocStateManageUIModel get manageUI;
  @override
  PodcastsModel? get pocast;
  @override
  PodCastModel? get selectedPodCast;
  @override
  Map<String, PodcastChannelModel?> get podcasts;
  @override
  @JsonKey(ignore: true)
  _$$_PodcastStateCopyWith<_$_PodcastState> get copyWith =>
      throw _privateConstructorUsedError;
}
