import '../../../models/models.dart';

abstract class ApiProvider {
  Future<ConfigModel> config({required String appId});

  Future<List<NewsDataModel>> getNews({required String link});

  Future<PodcastChannelModel?> getpodCasts({required String link});

  Future<String> instalation({required String appId});
  Future<String> monthly({required String appId});
}
