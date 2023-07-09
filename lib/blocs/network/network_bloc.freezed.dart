// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetWorkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(bool isConnected) networkNotified,
    required TResult Function(NetworkType type) networkTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(bool isConnected)? networkNotified,
    TResult? Function(NetworkType type)? networkTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(bool isConnected)? networkNotified,
    TResult Function(NetworkType type)? networkTypeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetWorkLoaded value) loaded,
    required TResult Function(NetWorkNotified value) networkNotified,
    required TResult Function(NetWorktypeChanged value) networkTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetWorkLoaded value)? loaded,
    TResult? Function(NetWorkNotified value)? networkNotified,
    TResult? Function(NetWorktypeChanged value)? networkTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetWorkLoaded value)? loaded,
    TResult Function(NetWorkNotified value)? networkNotified,
    TResult Function(NetWorktypeChanged value)? networkTypeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetWorkEventCopyWith<$Res> {
  factory $NetWorkEventCopyWith(
          NetWorkEvent value, $Res Function(NetWorkEvent) then) =
      _$NetWorkEventCopyWithImpl<$Res, NetWorkEvent>;
}

/// @nodoc
class _$NetWorkEventCopyWithImpl<$Res, $Val extends NetWorkEvent>
    implements $NetWorkEventCopyWith<$Res> {
  _$NetWorkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetWorkLoadedCopyWith<$Res> {
  factory _$$NetWorkLoadedCopyWith(
          _$NetWorkLoaded value, $Res Function(_$NetWorkLoaded) then) =
      __$$NetWorkLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetWorkLoadedCopyWithImpl<$Res>
    extends _$NetWorkEventCopyWithImpl<$Res, _$NetWorkLoaded>
    implements _$$NetWorkLoadedCopyWith<$Res> {
  __$$NetWorkLoadedCopyWithImpl(
      _$NetWorkLoaded _value, $Res Function(_$NetWorkLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetWorkLoaded implements NetWorkLoaded {
  const _$NetWorkLoaded();

  @override
  String toString() {
    return 'NetWorkEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetWorkLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(bool isConnected) networkNotified,
    required TResult Function(NetworkType type) networkTypeChanged,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(bool isConnected)? networkNotified,
    TResult? Function(NetworkType type)? networkTypeChanged,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(bool isConnected)? networkNotified,
    TResult Function(NetworkType type)? networkTypeChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetWorkLoaded value) loaded,
    required TResult Function(NetWorkNotified value) networkNotified,
    required TResult Function(NetWorktypeChanged value) networkTypeChanged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetWorkLoaded value)? loaded,
    TResult? Function(NetWorkNotified value)? networkNotified,
    TResult? Function(NetWorktypeChanged value)? networkTypeChanged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetWorkLoaded value)? loaded,
    TResult Function(NetWorkNotified value)? networkNotified,
    TResult Function(NetWorktypeChanged value)? networkTypeChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NetWorkLoaded implements NetWorkEvent {
  const factory NetWorkLoaded() = _$NetWorkLoaded;
}

/// @nodoc
abstract class _$$NetWorkNotifiedCopyWith<$Res> {
  factory _$$NetWorkNotifiedCopyWith(
          _$NetWorkNotified value, $Res Function(_$NetWorkNotified) then) =
      __$$NetWorkNotifiedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$NetWorkNotifiedCopyWithImpl<$Res>
    extends _$NetWorkEventCopyWithImpl<$Res, _$NetWorkNotified>
    implements _$$NetWorkNotifiedCopyWith<$Res> {
  __$$NetWorkNotifiedCopyWithImpl(
      _$NetWorkNotified _value, $Res Function(_$NetWorkNotified) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$NetWorkNotified(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NetWorkNotified implements NetWorkNotified {
  const _$NetWorkNotified({required this.isConnected});

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'NetWorkEvent.networkNotified(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetWorkNotified &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetWorkNotifiedCopyWith<_$NetWorkNotified> get copyWith =>
      __$$NetWorkNotifiedCopyWithImpl<_$NetWorkNotified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(bool isConnected) networkNotified,
    required TResult Function(NetworkType type) networkTypeChanged,
  }) {
    return networkNotified(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(bool isConnected)? networkNotified,
    TResult? Function(NetworkType type)? networkTypeChanged,
  }) {
    return networkNotified?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(bool isConnected)? networkNotified,
    TResult Function(NetworkType type)? networkTypeChanged,
    required TResult orElse(),
  }) {
    if (networkNotified != null) {
      return networkNotified(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetWorkLoaded value) loaded,
    required TResult Function(NetWorkNotified value) networkNotified,
    required TResult Function(NetWorktypeChanged value) networkTypeChanged,
  }) {
    return networkNotified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetWorkLoaded value)? loaded,
    TResult? Function(NetWorkNotified value)? networkNotified,
    TResult? Function(NetWorktypeChanged value)? networkTypeChanged,
  }) {
    return networkNotified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetWorkLoaded value)? loaded,
    TResult Function(NetWorkNotified value)? networkNotified,
    TResult Function(NetWorktypeChanged value)? networkTypeChanged,
    required TResult orElse(),
  }) {
    if (networkNotified != null) {
      return networkNotified(this);
    }
    return orElse();
  }
}

abstract class NetWorkNotified implements NetWorkEvent {
  const factory NetWorkNotified({required final bool isConnected}) =
      _$NetWorkNotified;

  bool get isConnected;
  @JsonKey(ignore: true)
  _$$NetWorkNotifiedCopyWith<_$NetWorkNotified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetWorktypeChangedCopyWith<$Res> {
  factory _$$NetWorktypeChangedCopyWith(_$NetWorktypeChanged value,
          $Res Function(_$NetWorktypeChanged) then) =
      __$$NetWorktypeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkType type});
}

/// @nodoc
class __$$NetWorktypeChangedCopyWithImpl<$Res>
    extends _$NetWorkEventCopyWithImpl<$Res, _$NetWorktypeChanged>
    implements _$$NetWorktypeChangedCopyWith<$Res> {
  __$$NetWorktypeChangedCopyWithImpl(
      _$NetWorktypeChanged _value, $Res Function(_$NetWorktypeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$NetWorktypeChanged(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NetworkType,
    ));
  }
}

/// @nodoc

class _$NetWorktypeChanged implements NetWorktypeChanged {
  const _$NetWorktypeChanged({required this.type});

  @override
  final NetworkType type;

  @override
  String toString() {
    return 'NetWorkEvent.networkTypeChanged(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetWorktypeChanged &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetWorktypeChangedCopyWith<_$NetWorktypeChanged> get copyWith =>
      __$$NetWorktypeChangedCopyWithImpl<_$NetWorktypeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(bool isConnected) networkNotified,
    required TResult Function(NetworkType type) networkTypeChanged,
  }) {
    return networkTypeChanged(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(bool isConnected)? networkNotified,
    TResult? Function(NetworkType type)? networkTypeChanged,
  }) {
    return networkTypeChanged?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(bool isConnected)? networkNotified,
    TResult Function(NetworkType type)? networkTypeChanged,
    required TResult orElse(),
  }) {
    if (networkTypeChanged != null) {
      return networkTypeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetWorkLoaded value) loaded,
    required TResult Function(NetWorkNotified value) networkNotified,
    required TResult Function(NetWorktypeChanged value) networkTypeChanged,
  }) {
    return networkTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetWorkLoaded value)? loaded,
    TResult? Function(NetWorkNotified value)? networkNotified,
    TResult? Function(NetWorktypeChanged value)? networkTypeChanged,
  }) {
    return networkTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetWorkLoaded value)? loaded,
    TResult Function(NetWorkNotified value)? networkNotified,
    TResult Function(NetWorktypeChanged value)? networkTypeChanged,
    required TResult orElse(),
  }) {
    if (networkTypeChanged != null) {
      return networkTypeChanged(this);
    }
    return orElse();
  }
}

abstract class NetWorktypeChanged implements NetWorkEvent {
  const factory NetWorktypeChanged({required final NetworkType type}) =
      _$NetWorktypeChanged;

  NetworkType get type;
  @JsonKey(ignore: true)
  _$$NetWorktypeChangedCopyWith<_$NetWorktypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NetWorkState {
  BlocStateManageUIModel get manageUI => throw _privateConstructorUsedError;
  NetworkType get networkType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetWorkStateCopyWith<NetWorkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetWorkStateCopyWith<$Res> {
  factory $NetWorkStateCopyWith(
          NetWorkState value, $Res Function(NetWorkState) then) =
      _$NetWorkStateCopyWithImpl<$Res, NetWorkState>;
  @useResult
  $Res call({BlocStateManageUIModel manageUI, NetworkType networkType});

  $BlocStateManageUIModelCopyWith<$Res> get manageUI;
}

/// @nodoc
class _$NetWorkStateCopyWithImpl<$Res, $Val extends NetWorkState>
    implements $NetWorkStateCopyWith<$Res> {
  _$NetWorkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manageUI = null,
    Object? networkType = null,
  }) {
    return _then(_value.copyWith(
      manageUI: null == manageUI
          ? _value.manageUI
          : manageUI // ignore: cast_nullable_to_non_nullable
              as BlocStateManageUIModel,
      networkType: null == networkType
          ? _value.networkType
          : networkType // ignore: cast_nullable_to_non_nullable
              as NetworkType,
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
abstract class _$$_NetWorkStateCopyWith<$Res>
    implements $NetWorkStateCopyWith<$Res> {
  factory _$$_NetWorkStateCopyWith(
          _$_NetWorkState value, $Res Function(_$_NetWorkState) then) =
      __$$_NetWorkStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStateManageUIModel manageUI, NetworkType networkType});

  @override
  $BlocStateManageUIModelCopyWith<$Res> get manageUI;
}

/// @nodoc
class __$$_NetWorkStateCopyWithImpl<$Res>
    extends _$NetWorkStateCopyWithImpl<$Res, _$_NetWorkState>
    implements _$$_NetWorkStateCopyWith<$Res> {
  __$$_NetWorkStateCopyWithImpl(
      _$_NetWorkState _value, $Res Function(_$_NetWorkState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manageUI = null,
    Object? networkType = null,
  }) {
    return _then(_$_NetWorkState(
      manageUI: null == manageUI
          ? _value.manageUI
          : manageUI // ignore: cast_nullable_to_non_nullable
              as BlocStateManageUIModel,
      networkType: null == networkType
          ? _value.networkType
          : networkType // ignore: cast_nullable_to_non_nullable
              as NetworkType,
    ));
  }
}

/// @nodoc

class _$_NetWorkState implements _NetWorkState {
  _$_NetWorkState({required this.manageUI, required this.networkType});

  @override
  final BlocStateManageUIModel manageUI;
  @override
  final NetworkType networkType;

  @override
  String toString() {
    return 'NetWorkState(manageUI: $manageUI, networkType: $networkType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetWorkState &&
            (identical(other.manageUI, manageUI) ||
                other.manageUI == manageUI) &&
            (identical(other.networkType, networkType) ||
                other.networkType == networkType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manageUI, networkType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetWorkStateCopyWith<_$_NetWorkState> get copyWith =>
      __$$_NetWorkStateCopyWithImpl<_$_NetWorkState>(this, _$identity);
}

abstract class _NetWorkState implements NetWorkState {
  factory _NetWorkState(
      {required final BlocStateManageUIModel manageUI,
      required final NetworkType networkType}) = _$_NetWorkState;

  @override
  BlocStateManageUIModel get manageUI;
  @override
  NetworkType get networkType;
  @override
  @JsonKey(ignore: true)
  _$$_NetWorkStateCopyWith<_$_NetWorkState> get copyWith =>
      throw _privateConstructorUsedError;
}
