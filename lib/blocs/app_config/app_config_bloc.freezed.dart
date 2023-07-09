// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppConfigEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appId) loaded,
    required TResult Function() offlined,
    required TResult Function() conected,
    required TResult Function(PlayerType playerType) playerChanged,
    required TResult Function() appInstalled,
    required TResult Function() monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String appId)? loaded,
    TResult? Function()? offlined,
    TResult? Function()? conected,
    TResult? Function(PlayerType playerType)? playerChanged,
    TResult? Function()? appInstalled,
    TResult? Function()? monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appId)? loaded,
    TResult Function()? offlined,
    TResult Function()? conected,
    TResult Function(PlayerType playerType)? playerChanged,
    TResult Function()? appInstalled,
    TResult Function()? monthly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigLoaded value) loaded,
    required TResult Function(AppConfigOfflined value) offlined,
    required TResult Function(AppConfigConnected value) conected,
    required TResult Function(AppConfigPlayerChanged value) playerChanged,
    required TResult Function(AppConfigAppInstalled value) appInstalled,
    required TResult Function(AppConfigAppMonthly value) monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppConfigLoaded value)? loaded,
    TResult? Function(AppConfigOfflined value)? offlined,
    TResult? Function(AppConfigConnected value)? conected,
    TResult? Function(AppConfigPlayerChanged value)? playerChanged,
    TResult? Function(AppConfigAppInstalled value)? appInstalled,
    TResult? Function(AppConfigAppMonthly value)? monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigLoaded value)? loaded,
    TResult Function(AppConfigOfflined value)? offlined,
    TResult Function(AppConfigConnected value)? conected,
    TResult Function(AppConfigPlayerChanged value)? playerChanged,
    TResult Function(AppConfigAppInstalled value)? appInstalled,
    TResult Function(AppConfigAppMonthly value)? monthly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigEventCopyWith<$Res> {
  factory $AppConfigEventCopyWith(
          AppConfigEvent value, $Res Function(AppConfigEvent) then) =
      _$AppConfigEventCopyWithImpl<$Res, AppConfigEvent>;
}

/// @nodoc
class _$AppConfigEventCopyWithImpl<$Res, $Val extends AppConfigEvent>
    implements $AppConfigEventCopyWith<$Res> {
  _$AppConfigEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppConfigLoadedCopyWith<$Res> {
  factory _$$AppConfigLoadedCopyWith(
          _$AppConfigLoaded value, $Res Function(_$AppConfigLoaded) then) =
      __$$AppConfigLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String appId});
}

/// @nodoc
class __$$AppConfigLoadedCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$AppConfigLoaded>
    implements _$$AppConfigLoadedCopyWith<$Res> {
  __$$AppConfigLoadedCopyWithImpl(
      _$AppConfigLoaded _value, $Res Function(_$AppConfigLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
  }) {
    return _then(_$AppConfigLoaded(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppConfigLoaded implements AppConfigLoaded {
  const _$AppConfigLoaded({required this.appId});

  @override
  final String appId;

  @override
  String toString() {
    return 'AppConfigEvent.loaded(appId: $appId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigLoaded &&
            (identical(other.appId, appId) || other.appId == appId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigLoadedCopyWith<_$AppConfigLoaded> get copyWith =>
      __$$AppConfigLoadedCopyWithImpl<_$AppConfigLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appId) loaded,
    required TResult Function() offlined,
    required TResult Function() conected,
    required TResult Function(PlayerType playerType) playerChanged,
    required TResult Function() appInstalled,
    required TResult Function() monthly,
  }) {
    return loaded(appId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String appId)? loaded,
    TResult? Function()? offlined,
    TResult? Function()? conected,
    TResult? Function(PlayerType playerType)? playerChanged,
    TResult? Function()? appInstalled,
    TResult? Function()? monthly,
  }) {
    return loaded?.call(appId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appId)? loaded,
    TResult Function()? offlined,
    TResult Function()? conected,
    TResult Function(PlayerType playerType)? playerChanged,
    TResult Function()? appInstalled,
    TResult Function()? monthly,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(appId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigLoaded value) loaded,
    required TResult Function(AppConfigOfflined value) offlined,
    required TResult Function(AppConfigConnected value) conected,
    required TResult Function(AppConfigPlayerChanged value) playerChanged,
    required TResult Function(AppConfigAppInstalled value) appInstalled,
    required TResult Function(AppConfigAppMonthly value) monthly,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppConfigLoaded value)? loaded,
    TResult? Function(AppConfigOfflined value)? offlined,
    TResult? Function(AppConfigConnected value)? conected,
    TResult? Function(AppConfigPlayerChanged value)? playerChanged,
    TResult? Function(AppConfigAppInstalled value)? appInstalled,
    TResult? Function(AppConfigAppMonthly value)? monthly,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigLoaded value)? loaded,
    TResult Function(AppConfigOfflined value)? offlined,
    TResult Function(AppConfigConnected value)? conected,
    TResult Function(AppConfigPlayerChanged value)? playerChanged,
    TResult Function(AppConfigAppInstalled value)? appInstalled,
    TResult Function(AppConfigAppMonthly value)? monthly,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AppConfigLoaded implements AppConfigEvent {
  const factory AppConfigLoaded({required final String appId}) =
      _$AppConfigLoaded;

  String get appId;
  @JsonKey(ignore: true)
  _$$AppConfigLoadedCopyWith<_$AppConfigLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppConfigOfflinedCopyWith<$Res> {
  factory _$$AppConfigOfflinedCopyWith(
          _$AppConfigOfflined value, $Res Function(_$AppConfigOfflined) then) =
      __$$AppConfigOfflinedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppConfigOfflinedCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$AppConfigOfflined>
    implements _$$AppConfigOfflinedCopyWith<$Res> {
  __$$AppConfigOfflinedCopyWithImpl(
      _$AppConfigOfflined _value, $Res Function(_$AppConfigOfflined) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppConfigOfflined implements AppConfigOfflined {
  const _$AppConfigOfflined();

  @override
  String toString() {
    return 'AppConfigEvent.offlined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppConfigOfflined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appId) loaded,
    required TResult Function() offlined,
    required TResult Function() conected,
    required TResult Function(PlayerType playerType) playerChanged,
    required TResult Function() appInstalled,
    required TResult Function() monthly,
  }) {
    return offlined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String appId)? loaded,
    TResult? Function()? offlined,
    TResult? Function()? conected,
    TResult? Function(PlayerType playerType)? playerChanged,
    TResult? Function()? appInstalled,
    TResult? Function()? monthly,
  }) {
    return offlined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appId)? loaded,
    TResult Function()? offlined,
    TResult Function()? conected,
    TResult Function(PlayerType playerType)? playerChanged,
    TResult Function()? appInstalled,
    TResult Function()? monthly,
    required TResult orElse(),
  }) {
    if (offlined != null) {
      return offlined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigLoaded value) loaded,
    required TResult Function(AppConfigOfflined value) offlined,
    required TResult Function(AppConfigConnected value) conected,
    required TResult Function(AppConfigPlayerChanged value) playerChanged,
    required TResult Function(AppConfigAppInstalled value) appInstalled,
    required TResult Function(AppConfigAppMonthly value) monthly,
  }) {
    return offlined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppConfigLoaded value)? loaded,
    TResult? Function(AppConfigOfflined value)? offlined,
    TResult? Function(AppConfigConnected value)? conected,
    TResult? Function(AppConfigPlayerChanged value)? playerChanged,
    TResult? Function(AppConfigAppInstalled value)? appInstalled,
    TResult? Function(AppConfigAppMonthly value)? monthly,
  }) {
    return offlined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigLoaded value)? loaded,
    TResult Function(AppConfigOfflined value)? offlined,
    TResult Function(AppConfigConnected value)? conected,
    TResult Function(AppConfigPlayerChanged value)? playerChanged,
    TResult Function(AppConfigAppInstalled value)? appInstalled,
    TResult Function(AppConfigAppMonthly value)? monthly,
    required TResult orElse(),
  }) {
    if (offlined != null) {
      return offlined(this);
    }
    return orElse();
  }
}

abstract class AppConfigOfflined implements AppConfigEvent {
  const factory AppConfigOfflined() = _$AppConfigOfflined;
}

/// @nodoc
abstract class _$$AppConfigConnectedCopyWith<$Res> {
  factory _$$AppConfigConnectedCopyWith(_$AppConfigConnected value,
          $Res Function(_$AppConfigConnected) then) =
      __$$AppConfigConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppConfigConnectedCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$AppConfigConnected>
    implements _$$AppConfigConnectedCopyWith<$Res> {
  __$$AppConfigConnectedCopyWithImpl(
      _$AppConfigConnected _value, $Res Function(_$AppConfigConnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppConfigConnected implements AppConfigConnected {
  const _$AppConfigConnected();

  @override
  String toString() {
    return 'AppConfigEvent.conected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppConfigConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appId) loaded,
    required TResult Function() offlined,
    required TResult Function() conected,
    required TResult Function(PlayerType playerType) playerChanged,
    required TResult Function() appInstalled,
    required TResult Function() monthly,
  }) {
    return conected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String appId)? loaded,
    TResult? Function()? offlined,
    TResult? Function()? conected,
    TResult? Function(PlayerType playerType)? playerChanged,
    TResult? Function()? appInstalled,
    TResult? Function()? monthly,
  }) {
    return conected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appId)? loaded,
    TResult Function()? offlined,
    TResult Function()? conected,
    TResult Function(PlayerType playerType)? playerChanged,
    TResult Function()? appInstalled,
    TResult Function()? monthly,
    required TResult orElse(),
  }) {
    if (conected != null) {
      return conected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigLoaded value) loaded,
    required TResult Function(AppConfigOfflined value) offlined,
    required TResult Function(AppConfigConnected value) conected,
    required TResult Function(AppConfigPlayerChanged value) playerChanged,
    required TResult Function(AppConfigAppInstalled value) appInstalled,
    required TResult Function(AppConfigAppMonthly value) monthly,
  }) {
    return conected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppConfigLoaded value)? loaded,
    TResult? Function(AppConfigOfflined value)? offlined,
    TResult? Function(AppConfigConnected value)? conected,
    TResult? Function(AppConfigPlayerChanged value)? playerChanged,
    TResult? Function(AppConfigAppInstalled value)? appInstalled,
    TResult? Function(AppConfigAppMonthly value)? monthly,
  }) {
    return conected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigLoaded value)? loaded,
    TResult Function(AppConfigOfflined value)? offlined,
    TResult Function(AppConfigConnected value)? conected,
    TResult Function(AppConfigPlayerChanged value)? playerChanged,
    TResult Function(AppConfigAppInstalled value)? appInstalled,
    TResult Function(AppConfigAppMonthly value)? monthly,
    required TResult orElse(),
  }) {
    if (conected != null) {
      return conected(this);
    }
    return orElse();
  }
}

abstract class AppConfigConnected implements AppConfigEvent {
  const factory AppConfigConnected() = _$AppConfigConnected;
}

/// @nodoc
abstract class _$$AppConfigPlayerChangedCopyWith<$Res> {
  factory _$$AppConfigPlayerChangedCopyWith(_$AppConfigPlayerChanged value,
          $Res Function(_$AppConfigPlayerChanged) then) =
      __$$AppConfigPlayerChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({PlayerType playerType});
}

/// @nodoc
class __$$AppConfigPlayerChangedCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$AppConfigPlayerChanged>
    implements _$$AppConfigPlayerChangedCopyWith<$Res> {
  __$$AppConfigPlayerChangedCopyWithImpl(_$AppConfigPlayerChanged _value,
      $Res Function(_$AppConfigPlayerChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
  }) {
    return _then(_$AppConfigPlayerChanged(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as PlayerType,
    ));
  }
}

/// @nodoc

class _$AppConfigPlayerChanged implements AppConfigPlayerChanged {
  const _$AppConfigPlayerChanged({required this.playerType});

  @override
  final PlayerType playerType;

  @override
  String toString() {
    return 'AppConfigEvent.playerChanged(playerType: $playerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigPlayerChanged &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigPlayerChangedCopyWith<_$AppConfigPlayerChanged> get copyWith =>
      __$$AppConfigPlayerChangedCopyWithImpl<_$AppConfigPlayerChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appId) loaded,
    required TResult Function() offlined,
    required TResult Function() conected,
    required TResult Function(PlayerType playerType) playerChanged,
    required TResult Function() appInstalled,
    required TResult Function() monthly,
  }) {
    return playerChanged(playerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String appId)? loaded,
    TResult? Function()? offlined,
    TResult? Function()? conected,
    TResult? Function(PlayerType playerType)? playerChanged,
    TResult? Function()? appInstalled,
    TResult? Function()? monthly,
  }) {
    return playerChanged?.call(playerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appId)? loaded,
    TResult Function()? offlined,
    TResult Function()? conected,
    TResult Function(PlayerType playerType)? playerChanged,
    TResult Function()? appInstalled,
    TResult Function()? monthly,
    required TResult orElse(),
  }) {
    if (playerChanged != null) {
      return playerChanged(playerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigLoaded value) loaded,
    required TResult Function(AppConfigOfflined value) offlined,
    required TResult Function(AppConfigConnected value) conected,
    required TResult Function(AppConfigPlayerChanged value) playerChanged,
    required TResult Function(AppConfigAppInstalled value) appInstalled,
    required TResult Function(AppConfigAppMonthly value) monthly,
  }) {
    return playerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppConfigLoaded value)? loaded,
    TResult? Function(AppConfigOfflined value)? offlined,
    TResult? Function(AppConfigConnected value)? conected,
    TResult? Function(AppConfigPlayerChanged value)? playerChanged,
    TResult? Function(AppConfigAppInstalled value)? appInstalled,
    TResult? Function(AppConfigAppMonthly value)? monthly,
  }) {
    return playerChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigLoaded value)? loaded,
    TResult Function(AppConfigOfflined value)? offlined,
    TResult Function(AppConfigConnected value)? conected,
    TResult Function(AppConfigPlayerChanged value)? playerChanged,
    TResult Function(AppConfigAppInstalled value)? appInstalled,
    TResult Function(AppConfigAppMonthly value)? monthly,
    required TResult orElse(),
  }) {
    if (playerChanged != null) {
      return playerChanged(this);
    }
    return orElse();
  }
}

abstract class AppConfigPlayerChanged implements AppConfigEvent {
  const factory AppConfigPlayerChanged({required final PlayerType playerType}) =
      _$AppConfigPlayerChanged;

  PlayerType get playerType;
  @JsonKey(ignore: true)
  _$$AppConfigPlayerChangedCopyWith<_$AppConfigPlayerChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppConfigAppInstalledCopyWith<$Res> {
  factory _$$AppConfigAppInstalledCopyWith(_$AppConfigAppInstalled value,
          $Res Function(_$AppConfigAppInstalled) then) =
      __$$AppConfigAppInstalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppConfigAppInstalledCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$AppConfigAppInstalled>
    implements _$$AppConfigAppInstalledCopyWith<$Res> {
  __$$AppConfigAppInstalledCopyWithImpl(_$AppConfigAppInstalled _value,
      $Res Function(_$AppConfigAppInstalled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppConfigAppInstalled implements AppConfigAppInstalled {
  const _$AppConfigAppInstalled();

  @override
  String toString() {
    return 'AppConfigEvent.appInstalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppConfigAppInstalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appId) loaded,
    required TResult Function() offlined,
    required TResult Function() conected,
    required TResult Function(PlayerType playerType) playerChanged,
    required TResult Function() appInstalled,
    required TResult Function() monthly,
  }) {
    return appInstalled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String appId)? loaded,
    TResult? Function()? offlined,
    TResult? Function()? conected,
    TResult? Function(PlayerType playerType)? playerChanged,
    TResult? Function()? appInstalled,
    TResult? Function()? monthly,
  }) {
    return appInstalled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appId)? loaded,
    TResult Function()? offlined,
    TResult Function()? conected,
    TResult Function(PlayerType playerType)? playerChanged,
    TResult Function()? appInstalled,
    TResult Function()? monthly,
    required TResult orElse(),
  }) {
    if (appInstalled != null) {
      return appInstalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigLoaded value) loaded,
    required TResult Function(AppConfigOfflined value) offlined,
    required TResult Function(AppConfigConnected value) conected,
    required TResult Function(AppConfigPlayerChanged value) playerChanged,
    required TResult Function(AppConfigAppInstalled value) appInstalled,
    required TResult Function(AppConfigAppMonthly value) monthly,
  }) {
    return appInstalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppConfigLoaded value)? loaded,
    TResult? Function(AppConfigOfflined value)? offlined,
    TResult? Function(AppConfigConnected value)? conected,
    TResult? Function(AppConfigPlayerChanged value)? playerChanged,
    TResult? Function(AppConfigAppInstalled value)? appInstalled,
    TResult? Function(AppConfigAppMonthly value)? monthly,
  }) {
    return appInstalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigLoaded value)? loaded,
    TResult Function(AppConfigOfflined value)? offlined,
    TResult Function(AppConfigConnected value)? conected,
    TResult Function(AppConfigPlayerChanged value)? playerChanged,
    TResult Function(AppConfigAppInstalled value)? appInstalled,
    TResult Function(AppConfigAppMonthly value)? monthly,
    required TResult orElse(),
  }) {
    if (appInstalled != null) {
      return appInstalled(this);
    }
    return orElse();
  }
}

abstract class AppConfigAppInstalled implements AppConfigEvent {
  const factory AppConfigAppInstalled() = _$AppConfigAppInstalled;
}

/// @nodoc
abstract class _$$AppConfigAppMonthlyCopyWith<$Res> {
  factory _$$AppConfigAppMonthlyCopyWith(_$AppConfigAppMonthly value,
          $Res Function(_$AppConfigAppMonthly) then) =
      __$$AppConfigAppMonthlyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppConfigAppMonthlyCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$AppConfigAppMonthly>
    implements _$$AppConfigAppMonthlyCopyWith<$Res> {
  __$$AppConfigAppMonthlyCopyWithImpl(
      _$AppConfigAppMonthly _value, $Res Function(_$AppConfigAppMonthly) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppConfigAppMonthly implements AppConfigAppMonthly {
  const _$AppConfigAppMonthly();

  @override
  String toString() {
    return 'AppConfigEvent.monthly()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppConfigAppMonthly);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appId) loaded,
    required TResult Function() offlined,
    required TResult Function() conected,
    required TResult Function(PlayerType playerType) playerChanged,
    required TResult Function() appInstalled,
    required TResult Function() monthly,
  }) {
    return monthly();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String appId)? loaded,
    TResult? Function()? offlined,
    TResult? Function()? conected,
    TResult? Function(PlayerType playerType)? playerChanged,
    TResult? Function()? appInstalled,
    TResult? Function()? monthly,
  }) {
    return monthly?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appId)? loaded,
    TResult Function()? offlined,
    TResult Function()? conected,
    TResult Function(PlayerType playerType)? playerChanged,
    TResult Function()? appInstalled,
    TResult Function()? monthly,
    required TResult orElse(),
  }) {
    if (monthly != null) {
      return monthly();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigLoaded value) loaded,
    required TResult Function(AppConfigOfflined value) offlined,
    required TResult Function(AppConfigConnected value) conected,
    required TResult Function(AppConfigPlayerChanged value) playerChanged,
    required TResult Function(AppConfigAppInstalled value) appInstalled,
    required TResult Function(AppConfigAppMonthly value) monthly,
  }) {
    return monthly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppConfigLoaded value)? loaded,
    TResult? Function(AppConfigOfflined value)? offlined,
    TResult? Function(AppConfigConnected value)? conected,
    TResult? Function(AppConfigPlayerChanged value)? playerChanged,
    TResult? Function(AppConfigAppInstalled value)? appInstalled,
    TResult? Function(AppConfigAppMonthly value)? monthly,
  }) {
    return monthly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigLoaded value)? loaded,
    TResult Function(AppConfigOfflined value)? offlined,
    TResult Function(AppConfigConnected value)? conected,
    TResult Function(AppConfigPlayerChanged value)? playerChanged,
    TResult Function(AppConfigAppInstalled value)? appInstalled,
    TResult Function(AppConfigAppMonthly value)? monthly,
    required TResult orElse(),
  }) {
    if (monthly != null) {
      return monthly(this);
    }
    return orElse();
  }
}

abstract class AppConfigAppMonthly implements AppConfigEvent {
  const factory AppConfigAppMonthly() = _$AppConfigAppMonthly;
}

/// @nodoc
mixin _$AppConfigState {
  ConfigModel? get config => throw _privateConstructorUsedError;
  BlocStateManageUIModel get manageUI => throw _privateConstructorUsedError;
  PlayerType get playerType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigStateCopyWith<AppConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigStateCopyWith<$Res> {
  factory $AppConfigStateCopyWith(
          AppConfigState value, $Res Function(AppConfigState) then) =
      _$AppConfigStateCopyWithImpl<$Res, AppConfigState>;
  @useResult
  $Res call(
      {ConfigModel? config,
      BlocStateManageUIModel manageUI,
      PlayerType playerType});

  $ConfigModelCopyWith<$Res>? get config;
  $BlocStateManageUIModelCopyWith<$Res> get manageUI;
}

/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res, $Val extends AppConfigState>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = freezed,
    Object? manageUI = null,
    Object? playerType = null,
  }) {
    return _then(_value.copyWith(
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as ConfigModel?,
      manageUI: null == manageUI
          ? _value.manageUI
          : manageUI // ignore: cast_nullable_to_non_nullable
              as BlocStateManageUIModel,
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as PlayerType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfigModelCopyWith<$Res>? get config {
    if (_value.config == null) {
      return null;
    }

    return $ConfigModelCopyWith<$Res>(_value.config!, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
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
abstract class _$$_AppConfigStateCopyWith<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  factory _$$_AppConfigStateCopyWith(
          _$_AppConfigState value, $Res Function(_$_AppConfigState) then) =
      __$$_AppConfigStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConfigModel? config,
      BlocStateManageUIModel manageUI,
      PlayerType playerType});

  @override
  $ConfigModelCopyWith<$Res>? get config;
  @override
  $BlocStateManageUIModelCopyWith<$Res> get manageUI;
}

/// @nodoc
class __$$_AppConfigStateCopyWithImpl<$Res>
    extends _$AppConfigStateCopyWithImpl<$Res, _$_AppConfigState>
    implements _$$_AppConfigStateCopyWith<$Res> {
  __$$_AppConfigStateCopyWithImpl(
      _$_AppConfigState _value, $Res Function(_$_AppConfigState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = freezed,
    Object? manageUI = null,
    Object? playerType = null,
  }) {
    return _then(_$_AppConfigState(
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as ConfigModel?,
      manageUI: null == manageUI
          ? _value.manageUI
          : manageUI // ignore: cast_nullable_to_non_nullable
              as BlocStateManageUIModel,
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as PlayerType,
    ));
  }
}

/// @nodoc

class _$_AppConfigState implements _AppConfigState {
  _$_AppConfigState(
      {this.config, required this.manageUI, required this.playerType});

  @override
  final ConfigModel? config;
  @override
  final BlocStateManageUIModel manageUI;
  @override
  final PlayerType playerType;

  @override
  String toString() {
    return 'AppConfigState(config: $config, manageUI: $manageUI, playerType: $playerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppConfigState &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.manageUI, manageUI) ||
                other.manageUI == manageUI) &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config, manageUI, playerType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppConfigStateCopyWith<_$_AppConfigState> get copyWith =>
      __$$_AppConfigStateCopyWithImpl<_$_AppConfigState>(this, _$identity);
}

abstract class _AppConfigState implements AppConfigState {
  factory _AppConfigState(
      {final ConfigModel? config,
      required final BlocStateManageUIModel manageUI,
      required final PlayerType playerType}) = _$_AppConfigState;

  @override
  ConfigModel? get config;
  @override
  BlocStateManageUIModel get manageUI;
  @override
  PlayerType get playerType;
  @override
  @JsonKey(ignore: true)
  _$$_AppConfigStateCopyWith<_$_AppConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}
