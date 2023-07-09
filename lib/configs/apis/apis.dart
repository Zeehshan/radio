export 'back_end_apis.dart';

class BackendApis {
  static const baseUrl = 'https://apps.emitironline.com/';

  static const config = 'uploads/{appId}/{appId}.json';

  static const instalation = 'inc_call.php?idapp={appId}&param=instalaciones';

  static const monthly = 'inc_call.php?idapp={appId}&param=usuarios';
}
