import '../../models/models.dart';
import '../providers/providers.dart';

class ApiRepository {
  final ApiProvider apiProvider;
  ApiRepository() : apiProvider = ApiHttpProvider();

  Future<ConfigModel> config({required String appId}) async {
    try {
      return await apiProvider.config(appId: appId);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<NewsDataModel>> getNews({required String link}) async {
    try {
      return await apiProvider.getNews(link: link);
    } catch (e) {
      rethrow;
    }
  }

  Future<PodcastChannelModel?> getpodCasts({required String link}) async {
    try {
      return await apiProvider.getpodCasts(link: link);
    } catch (e) {
      rethrow;
    }
  }

  Future<String> instalation({required String appId}) async {
    try {
      return await apiProvider.instalation(appId: appId);
    } catch (e) {
      rethrow;
    }
  }

  Future<String> monthly({required String appId}) async {
    try {
      return await apiProvider.monthly(appId: appId);
    } catch (e) {
      rethrow;
    }
  }
}
