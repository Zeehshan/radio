// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shut_down_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShutDownEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sec) timerChanged,
    required TResult Function() timerStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int sec)? timerChanged,
    TResult? Function()? timerStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sec)? timerChanged,
    TResult Function()? timerStoped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShutDowntimerchanged value) timerChanged,
    required TResult Function(ShutDowntimerStoped value) timerStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShutDowntimerchanged value)? timerChanged,
    TResult? Function(ShutDowntimerStoped value)? timerStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShutDowntimerchanged value)? timerChanged,
    TResult Function(ShutDowntimerStoped value)? timerStoped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShutDownEventCopyWith<$Res> {
  factory $ShutDownEventCopyWith(
          ShutDownEvent value, $Res Function(ShutDownEvent) then) =
      _$ShutDownEventCopyWithImpl<$Res, ShutDownEvent>;
}

/// @nodoc
class _$ShutDownEventCopyWithImpl<$Res, $Val extends ShutDownEvent>
    implements $ShutDownEventCopyWith<$Res> {
  _$ShutDownEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShutDowntimerchangedCopyWith<$Res> {
  factory _$$ShutDowntimerchangedCopyWith(_$ShutDowntimerchanged value,
          $Res Function(_$ShutDowntimerchanged) then) =
      __$$ShutDowntimerchangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int sec});
}

/// @nodoc
class __$$ShutDowntimerchangedCopyWithImpl<$Res>
    extends _$ShutDownEventCopyWithImpl<$Res, _$ShutDowntimerchanged>
    implements _$$ShutDowntimerchangedCopyWith<$Res> {
  __$$ShutDowntimerchangedCopyWithImpl(_$ShutDowntimerchanged _value,
      $Res Function(_$ShutDowntimerchanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sec = null,
  }) {
    return _then(_$ShutDowntimerchanged(
      sec: null == sec
          ? _value.sec
          : sec // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShutDowntimerchanged implements ShutDowntimerchanged {
  const _$ShutDowntimerchanged({required this.sec});

  @override
  final int sec;

  @override
  String toString() {
    return 'ShutDownEvent.timerChanged(sec: $sec)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShutDowntimerchanged &&
            (identical(other.sec, sec) || other.sec == sec));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sec);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShutDowntimerchangedCopyWith<_$ShutDowntimerchanged> get copyWith =>
      __$$ShutDowntimerchangedCopyWithImpl<_$ShutDowntimerchanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sec) timerChanged,
    required TResult Function() timerStoped,
  }) {
    return timerChanged(sec);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int sec)? timerChanged,
    TResult? Function()? timerStoped,
  }) {
    return timerChanged?.call(sec);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sec)? timerChanged,
    TResult Function()? timerStoped,
    required TResult orElse(),
  }) {
    if (timerChanged != null) {
      return timerChanged(sec);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShutDowntimerchanged value) timerChanged,
    required TResult Function(ShutDowntimerStoped value) timerStoped,
  }) {
    return timerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShutDowntimerchanged value)? timerChanged,
    TResult? Function(ShutDowntimerStoped value)? timerStoped,
  }) {
    return timerChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShutDowntimerchanged value)? timerChanged,
    TResult Function(ShutDowntimerStoped value)? timerStoped,
    required TResult orElse(),
  }) {
    if (timerChanged != null) {
      return timerChanged(this);
    }
    return orElse();
  }
}

abstract class ShutDowntimerchanged implements ShutDownEvent {
  const factory ShutDowntimerchanged({required final int sec}) =
      _$ShutDowntimerchanged;

  int get sec;
  @JsonKey(ignore: true)
  _$$ShutDowntimerchangedCopyWith<_$ShutDowntimerchanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShutDowntimerStopedCopyWith<$Res> {
  factory _$$ShutDowntimerStopedCopyWith(_$ShutDowntimerStoped value,
          $Res Function(_$ShutDowntimerStoped) then) =
      __$$ShutDowntimerStopedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShutDowntimerStopedCopyWithImpl<$Res>
    extends _$ShutDownEventCopyWithImpl<$Res, _$ShutDowntimerStoped>
    implements _$$ShutDowntimerStopedCopyWith<$Res> {
  __$$ShutDowntimerStopedCopyWithImpl(
      _$ShutDowntimerStoped _value, $Res Function(_$ShutDowntimerStoped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShutDowntimerStoped implements ShutDowntimerStoped {
  const _$ShutDowntimerStoped();

  @override
  String toString() {
    return 'ShutDownEvent.timerStoped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShutDowntimerStoped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sec) timerChanged,
    required TResult Function() timerStoped,
  }) {
    return timerStoped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int sec)? timerChanged,
    TResult? Function()? timerStoped,
  }) {
    return timerStoped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sec)? timerChanged,
    TResult Function()? timerStoped,
    required TResult orElse(),
  }) {
    if (timerStoped != null) {
      return timerStoped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShutDowntimerchanged value) timerChanged,
    required TResult Function(ShutDowntimerStoped value) timerStoped,
  }) {
    return timerStoped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShutDowntimerchanged value)? timerChanged,
    TResult? Function(ShutDowntimerStoped value)? timerStoped,
  }) {
    return timerStoped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShutDowntimerchanged value)? timerChanged,
    TResult Function(ShutDowntimerStoped value)? timerStoped,
    required TResult orElse(),
  }) {
    if (timerStoped != null) {
      return timerStoped(this);
    }
    return orElse();
  }
}

abstract class ShutDowntimerStoped implements ShutDownEvent {
  const factory ShutDowntimerStoped() = _$ShutDowntimerStoped;
}

/// @nodoc
mixin _$ShutDownState {
  int get sec => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShutDownStateCopyWith<ShutDownState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShutDownStateCopyWith<$Res> {
  factory $ShutDownStateCopyWith(
          ShutDownState value, $Res Function(ShutDownState) then) =
      _$ShutDownStateCopyWithImpl<$Res, ShutDownState>;
  @useResult
  $Res call({int sec});
}

/// @nodoc
class _$ShutDownStateCopyWithImpl<$Res, $Val extends ShutDownState>
    implements $ShutDownStateCopyWith<$Res> {
  _$ShutDownStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sec = null,
  }) {
    return _then(_value.copyWith(
      sec: null == sec
          ? _value.sec
          : sec // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShutDownStateCopyWith<$Res>
    implements $ShutDownStateCopyWith<$Res> {
  factory _$$_ShutDownStateCopyWith(
          _$_ShutDownState value, $Res Function(_$_ShutDownState) then) =
      __$$_ShutDownStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int sec});
}

/// @nodoc
class __$$_ShutDownStateCopyWithImpl<$Res>
    extends _$ShutDownStateCopyWithImpl<$Res, _$_ShutDownState>
    implements _$$_ShutDownStateCopyWith<$Res> {
  __$$_ShutDownStateCopyWithImpl(
      _$_ShutDownState _value, $Res Function(_$_ShutDownState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sec = null,
  }) {
    return _then(_$_ShutDownState(
      sec: null == sec
          ? _value.sec
          : sec // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ShutDownState implements _ShutDownState {
  _$_ShutDownState({required this.sec});

  @override
  final int sec;

  @override
  String toString() {
    return 'ShutDownState(sec: $sec)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShutDownState &&
            (identical(other.sec, sec) || other.sec == sec));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sec);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShutDownStateCopyWith<_$_ShutDownState> get copyWith =>
      __$$_ShutDownStateCopyWithImpl<_$_ShutDownState>(this, _$identity);
}

abstract class _ShutDownState implements ShutDownState {
  factory _ShutDownState({required final int sec}) = _$_ShutDownState;

  @override
  int get sec;
  @override
  @JsonKey(ignore: true)
  _$$_ShutDownStateCopyWith<_$_ShutDownState> get copyWith =>
      throw _privateConstructorUsedError;
}
