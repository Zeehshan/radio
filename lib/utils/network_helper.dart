import 'package:connectivity_plus/connectivity_plus.dart';

import '../blocs/blocs.dart';
import 'enums.dart';

class NetworkHelper {
  static void observeNetwork() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.wifi) {
        NetWorkBloc().add(const NetWorktypeChanged(type: NetworkType.wifi));
      } else if (result == ConnectivityResult.mobile) {
        NetWorkBloc().add(const NetWorktypeChanged(type: NetworkType.mobile));
      } else if (result == ConnectivityResult.mobile) {
        NetWorkBloc().add(const NetWorktypeChanged(type: NetworkType.unknown));
      } else if (result == ConnectivityResult.none) {
        NetWorkBloc().add(const NetWorkNotified(isConnected: false));
      } else {
        NetWorkBloc().add(const NetWorkNotified(isConnected: true));
      }
    });
  }
}
