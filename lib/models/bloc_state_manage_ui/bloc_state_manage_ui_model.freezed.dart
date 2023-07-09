// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_state_manage_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocStateManageUIModel {
  BlocStateUIStatus get uiStatus => throw _privateConstructorUsedError;
  BlocStateUIActionModel get uiAction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlocStateManageUIModelCopyWith<BlocStateManageUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocStateManageUIModelCopyWith<$Res> {
  factory $BlocStateManageUIModelCopyWith(BlocStateManageUIModel value,
          $Res Function(BlocStateManageUIModel) then) =
      _$BlocStateManageUIModelCopyWithImpl<$Res, BlocStateManageUIModel>;
  @useResult
  $Res call({BlocStateUIStatus uiStatus, BlocStateUIActionModel uiAction});

  $BlocStateUIActionModelCopyWith<$Res> get uiAction;
}

/// @nodoc
class _$BlocStateManageUIModelCopyWithImpl<$Res,
        $Val extends BlocStateManageUIModel>
    implements $BlocStateManageUIModelCopyWith<$Res> {
  _$BlocStateManageUIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiStatus = null,
    Object? uiAction = null,
  }) {
    return _then(_value.copyWith(
      uiStatus: null == uiStatus
          ? _value.uiStatus
          : uiStatus // ignore: cast_nullable_to_non_nullable
              as BlocStateUIStatus,
      uiAction: null == uiAction
          ? _value.uiAction
          : uiAction // ignore: cast_nullable_to_non_nullable
              as BlocStateUIActionModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlocStateUIActionModelCopyWith<$Res> get uiAction {
    return $BlocStateUIActionModelCopyWith<$Res>(_value.uiAction, (value) {
      return _then(_value.copyWith(uiAction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BlocStateManageUIModelCopyWith<$Res>
    implements $BlocStateManageUIModelCopyWith<$Res> {
  factory _$$_BlocStateManageUIModelCopyWith(_$_BlocStateManageUIModel value,
          $Res Function(_$_BlocStateManageUIModel) then) =
      __$$_BlocStateManageUIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStateUIStatus uiStatus, BlocStateUIActionModel uiAction});

  @override
  $BlocStateUIActionModelCopyWith<$Res> get uiAction;
}

/// @nodoc
class __$$_BlocStateManageUIModelCopyWithImpl<$Res>
    extends _$BlocStateManageUIModelCopyWithImpl<$Res,
        _$_BlocStateManageUIModel>
    implements _$$_BlocStateManageUIModelCopyWith<$Res> {
  __$$_BlocStateManageUIModelCopyWithImpl(_$_BlocStateManageUIModel _value,
      $Res Function(_$_BlocStateManageUIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiStatus = null,
    Object? uiAction = null,
  }) {
    return _then(_$_BlocStateManageUIModel(
      uiStatus: null == uiStatus
          ? _value.uiStatus
          : uiStatus // ignore: cast_nullable_to_non_nullable
              as BlocStateUIStatus,
      uiAction: null == uiAction
          ? _value.uiAction
          : uiAction // ignore: cast_nullable_to_non_nullable
              as BlocStateUIActionModel,
    ));
  }
}

/// @nodoc

class _$_BlocStateManageUIModel implements _BlocStateManageUIModel {
  const _$_BlocStateManageUIModel(
      {required this.uiStatus, required this.uiAction});

  @override
  final BlocStateUIStatus uiStatus;
  @override
  final BlocStateUIActionModel uiAction;

  @override
  String toString() {
    return 'BlocStateManageUIModel(uiStatus: $uiStatus, uiAction: $uiAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlocStateManageUIModel &&
            (identical(other.uiStatus, uiStatus) ||
                other.uiStatus == uiStatus) &&
            (identical(other.uiAction, uiAction) ||
                other.uiAction == uiAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uiStatus, uiAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlocStateManageUIModelCopyWith<_$_BlocStateManageUIModel> get copyWith =>
      __$$_BlocStateManageUIModelCopyWithImpl<_$_BlocStateManageUIModel>(
          this, _$identity);
}

abstract class _BlocStateManageUIModel implements BlocStateManageUIModel {
  const factory _BlocStateManageUIModel(
          {required final BlocStateUIStatus uiStatus,
          required final BlocStateUIActionModel uiAction}) =
      _$_BlocStateManageUIModel;

  @override
  BlocStateUIStatus get uiStatus;
  @override
  BlocStateUIActionModel get uiAction;
  @override
  @JsonKey(ignore: true)
  _$$_BlocStateManageUIModelCopyWith<_$_BlocStateManageUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BlocStateUIActionModel {
  BlocStateUIActionType get type => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get errors => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlocStateUIActionModelCopyWith<BlocStateUIActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocStateUIActionModelCopyWith<$Res> {
  factory $BlocStateUIActionModelCopyWith(BlocStateUIActionModel value,
          $Res Function(BlocStateUIActionModel) then) =
      _$BlocStateUIActionModelCopyWithImpl<$Res, BlocStateUIActionModel>;
  @useResult
  $Res call(
      {BlocStateUIActionType type,
      String? message,
      Map<String, dynamic>? errors,
      dynamic data});
}

/// @nodoc
class _$BlocStateUIActionModelCopyWithImpl<$Res,
        $Val extends BlocStateUIActionModel>
    implements $BlocStateUIActionModelCopyWith<$Res> {
  _$BlocStateUIActionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? message = freezed,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BlocStateUIActionType,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlocStateUIActionModelCopyWith<$Res>
    implements $BlocStateUIActionModelCopyWith<$Res> {
  factory _$$_BlocStateUIActionModelCopyWith(_$_BlocStateUIActionModel value,
          $Res Function(_$_BlocStateUIActionModel) then) =
      __$$_BlocStateUIActionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStateUIActionType type,
      String? message,
      Map<String, dynamic>? errors,
      dynamic data});
}

/// @nodoc
class __$$_BlocStateUIActionModelCopyWithImpl<$Res>
    extends _$BlocStateUIActionModelCopyWithImpl<$Res,
        _$_BlocStateUIActionModel>
    implements _$$_BlocStateUIActionModelCopyWith<$Res> {
  __$$_BlocStateUIActionModelCopyWithImpl(_$_BlocStateUIActionModel _value,
      $Res Function(_$_BlocStateUIActionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? message = freezed,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BlocStateUIActionModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BlocStateUIActionType,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_BlocStateUIActionModel implements _BlocStateUIActionModel {
  const _$_BlocStateUIActionModel(
      {required this.type,
      this.message,
      final Map<String, dynamic>? errors,
      this.data})
      : _errors = errors;

  @override
  final BlocStateUIActionType type;
  @override
  final String? message;
  final Map<String, dynamic>? _errors;
  @override
  Map<String, dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final dynamic data;

  @override
  String toString() {
    return 'BlocStateUIActionModel(type: $type, message: $message, errors: $errors, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlocStateUIActionModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      message,
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlocStateUIActionModelCopyWith<_$_BlocStateUIActionModel> get copyWith =>
      __$$_BlocStateUIActionModelCopyWithImpl<_$_BlocStateUIActionModel>(
          this, _$identity);
}

abstract class _BlocStateUIActionModel implements BlocStateUIActionModel {
  const factory _BlocStateUIActionModel(
      {required final BlocStateUIActionType type,
      final String? message,
      final Map<String, dynamic>? errors,
      final dynamic data}) = _$_BlocStateUIActionModel;

  @override
  BlocStateUIActionType get type;
  @override
  String? get message;
  @override
  Map<String, dynamic>? get errors;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_BlocStateUIActionModelCopyWith<_$_BlocStateUIActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
