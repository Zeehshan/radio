import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/providers/providers.dart';
import '../../ui/sheets/sheets.dart';
import '../../utils/utils.dart';

part 'shut_down_event.dart';
part 'shut_down_state.dart';
part 'shut_down_bloc.freezed.dart';

class ShutDownBloc extends Bloc<ShutDownEvent, ShutDownState> {
  ShutDownBloc() : super(ShutDownState.initial()) {
    on<ShutDowntimerchanged>(_onShutDowntimerchanged);
  }

  void _onShutDowntimerchanged(ShutDowntimerchanged event, Emitter emit) async {
    try {
      final DatabaseProvider databaseProvider = DatabaseProvider();

      int? index;
      index ??= await databaseProvider.getSleepTime();

      final minutes = int.parse(timesList[index!]['time'].toString()) * 60;
      final remaining = minutes - event.sec;
      emit(state.copyWith(sec: remaining));
    } catch (e) {
      logger.e(e);
    }
  }
}
