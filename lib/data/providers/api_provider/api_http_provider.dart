import 'dart:convert';
import 'dart:io';

import 'package:xml/xml.dart';
import 'package:xml2json/xml2json.dart';

import '../../../configs/apis/apis.dart';
import '../../../models/models.dart';
import '../../../utils/utils.dart';
import '../providers.dart';

class ApiHttpProvider extends BaseApiProvider implements ApiProvider {
  @override
  Future<ConfigModel> config({required String appId}) async {
    try {
      final result = await InternetAddress.lookup('example.com');
      final isInternetAvailabel =
          result.isNotEmpty && result[0].rawAddress.isNotEmpty;

      ConfigModel? configModel;
      DatabaseProvider databaseProvider = DatabaseProvider();

      try {
        Map<String, dynamic>? apiCalledhoursCache =
            await databaseProvider.getApiCacheData(id: 'config');
        final int duration = apiCalledhoursCache!['time_stamp'];
        DateTime date = DateTime.fromMillisecondsSinceEpoch(duration);
        DateTime now = DateTime.now();
        final hoursOfApiCalled = now.difference(date).inSeconds;
        logger.i('hoursOfApiCalled', hoursOfApiCalled);
        if (hoursOfApiCalled < 14400 || (hoursOfApiCalled > 14400)) {
          logger.i('data loaded from local');
          Map<String, dynamic>? configCache =
              await databaseProvider.getAppConfigData();
          final response = jsonDecode(configCache!['appConfigData']);
          configModel = ConfigModel.fromJson(response);
        }
      } catch (e) {
        logger.d('DatabaseProvider error', e);
      }
      // configModel = null;
      if (configModel == null) {
        final path = BackendApis.config.replaceAll('{appId}', appId);
        final response = await backendApiReq.get(path);
        try {
          databaseProvider.addApiCacheData({
            'id': 'config',
            'time_stamp': DateTime.now().millisecondsSinceEpoch
          });
          final data = jsonEncode(response.data);
          final appConfigData = {'id': 'appConfig', 'appConfigData': data};
          databaseProvider.addAppConfigData(appConfigData);
        } catch (e) {
          ///
        }
        configModel = ConfigModel.fromJson(response.data);
      }
      return configModel;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<NewsDataModel>> getNews({required String link}) async {
    try {
      final response = await backendApiReq.get(link);
      final document = XmlDocument.parse(response.data);
      document.toXmlString();
      final myTransformer = Xml2Json();
      myTransformer.parse(document.toXmlString());
      var json = myTransformer.toParkerWithAttrs();
      Map<String, dynamic> data = jsonDecode(json);
      List<NewsDataModel> news =
          (data['rss']['channel']['item'] as List<dynamic>)
              .map((e) => NewsDataModel.fromJson(e))
              .toList();

      return news;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PodcastChannelModel?> getpodCasts({required String link}) async {
    try {
      final response = await backendApiReq.get(link);
      final document = XmlDocument.parse(response.data);
      document.toXmlString();
      final myTransformer = Xml2Json();
      myTransformer.parse(document.toXmlString());
      var json = myTransformer.toParkerWithAttrs();
      Map<String, dynamic> data = jsonDecode(json);
      logger.i(data);
      PodcastChannelModel podcasts =
          PodcastChannelModel.fromJson(data['rss']['channel']);

      return podcasts;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> instalation({required String appId}) async {
    try {
      DatabaseProvider databaseProvider = DatabaseProvider();
      Map<String, dynamic>? apiCalledhoursCache =
          await databaseProvider.getApiCacheData(id: 'instalation');
      logger.d('instalation cache', apiCalledhoursCache);
      if (apiCalledhoursCache?['id'] == 'instalation') {
        return 'ok';
      } else {
        final path = BackendApis.instalation.replaceAll('{appId}', appId);
        final response = await backendApiReq.get(path);
        if (jsonDecode(response.data)['resultado'] == 'ok') {
          databaseProvider.addApiCacheData({
            'id': 'instalation',
            'time_stamp': DateTime.now().millisecondsSinceEpoch
          });
        }
        return 'ok';
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> monthly({required String appId}) async {
    try {
      DatabaseProvider databaseProvider = DatabaseProvider();
      Map<String, dynamic>? apiCalledhoursCache =
          await databaseProvider.getApiCacheData(id: 'monthly');
      logger.d('monthly cache', apiCalledhoursCache);
      bool shouldCallApi = false;
      if (apiCalledhoursCache?['id'] == 'monthly') {
        final int duration = apiCalledhoursCache?['time_stamp'];
        DateTime date = DateTime.fromMillisecondsSinceEpoch(duration);
        DateTime now = DateTime.now();
        final hoursOfApiCalled = now.difference(date).inDays;
        if (hoursOfApiCalled > 30) {
          shouldCallApi = true;
        } else {
          shouldCallApi = false;
        }
      } else {
        shouldCallApi = true;
      }
      if (shouldCallApi) {
        final path = BackendApis.monthly.replaceAll('{appId}', appId);
        final response = await backendApiReq.get(path);
        if (jsonDecode(response.data)['resultado'] == 'ok') {
          databaseProvider.addApiCacheData({
            'id': 'monthly',
            'time_stamp': DateTime.now().millisecondsSinceEpoch
          });
        }
        return 'ok';
      } else {
        return 'ok';
      }
    } catch (e) {
      rethrow;
    }
  }
}
