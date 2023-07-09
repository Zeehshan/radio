import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/utils.dart';

part 'bloc_state_manage_ui_model.freezed.dart';

@freezed
class BlocStateManageUIModel with _$BlocStateManageUIModel {
  const factory BlocStateManageUIModel({
    required BlocStateUIStatus uiStatus,
    required BlocStateUIActionModel uiAction,
  }) = _BlocStateManageUIModel;

  factory BlocStateManageUIModel.initial() {
    return BlocStateManageUIModel(
      uiStatus: BlocStateUIStatus.loading,
      uiAction: BlocStateUIActionModel.initial(),
    );
  }
}

@freezed
class BlocStateUIActionModel with _$BlocStateUIActionModel {
  const factory BlocStateUIActionModel(
      {required BlocStateUIActionType type,
      String? message,
      Map<String, dynamic>? errors,
      dynamic data}) = _BlocStateUIActionModel;

  factory BlocStateUIActionModel.initial() {
    return const BlocStateUIActionModel(
        type: BlocStateUIActionType.none,
        message: '',
        errors: <String, dynamic>{},
        data: null);
  }
}
