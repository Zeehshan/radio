// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import '../../configs/environment.dart';
import '../../models/models.dart';
import '../../utils/utils.dart';

class DatabaseProvider {
  static final DatabaseProvider _instance = DatabaseProvider._internal();

  factory DatabaseProvider() => _instance;

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDB();
    return _db!;
  }

  DatabaseProvider._internal();

  Future<Database> initDB() async {
    try {
      Directory? documentsDirectory;
      if (Platform.isIOS) {
        documentsDirectory = await getTemporaryDirectory();
      } else {
        documentsDirectory = await getExternalStorageDirectory();
      }
      var knockDir =
          await Directory('${documentsDirectory!.path}/${Environment.appId}')
              .create(recursive: true);

      String path = join(knockDir.path, 'main.db');
      var theDb = await openDatabase(path, version: 13, onCreate: _onCreate);
      return theDb;
    } catch (e) {
      rethrow;
    }
  }

  void _onCreate(Database db, int version) async {
    db.transaction((txn) async {
      await txn.execute(
          'CREATE TABLE  ${Environment.appConfig}(id STRING PRIMARY KEY,appConfigData TEXT)');
      await txn.execute(
          'CREATE TABLE  ${Environment.apiCache}(id STRING PRIMARY KEY, time_stamp INTEGER)');
      await txn.execute(
          'CREATE TABLE ${Environment.channel}(id STRING PRIMARY KEY, channelData TEXT)');
    });

    logger.d('Database was Created!');
  }

  Future getAppConfigData() async {
    try {
      var dbClient = await db;
      List<Map<String, Object?>> res = await dbClient.query(
          Environment.appConfig,
          where: 'id = ?',
          whereArgs: ['appConfig']);
      Map<String, Object?> data = res.first;
      logger.i('getAppConfigData', data);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  Future addAppConfigData(Map<String, dynamic> data) async {
    logger.d(data);
    var dbClient = await db;
    try {
      int res = await dbClient.insert(Environment.appConfig, data);
      logger.d('BodyParts added $res');
      return res;
    } catch (e) {
      dbClient.update(Environment.appConfig, data,
          where: 'id = ?', whereArgs: [data['id']]);
    }
  }

  Future getApiCacheData({required String id}) async {
    try {
      var dbClient = await db;
      List<Map<String, Object?>> res = await dbClient
          .query(Environment.apiCache, where: 'id = ?', whereArgs: [id]);
      Map<String, Object?> data = res.first;
      logger.i('getApiCacheData', data);
      return data;
    } catch (e) {
      return null;
    }
  }

  Future addApiCacheData(Map<String, dynamic> data) async {
    logger.d(data);
    var dbClient = await db;
    try {
      int res = await dbClient.insert(Environment.apiCache, data);
      logger.d('addApiCacheData added $res');
      return res;
    } catch (e) {
      dbClient.update(Environment.apiCache, data,
          where: 'id = ?', whereArgs: [data['id']]);
    }
  }

  Future<int> deleteTabelData(String table, [String? id]) async {
    if (table == Environment.appConfig) {
      var dbClient = await db;
      var res = await dbClient.delete(table);
      logger.d('AppConfig deleted $res');
    }
    var dbClient = await db;
    var res = await dbClient.delete(table, where: 'id = ?', whereArgs: [id]);
    logger.d('deleted $res');
    return res;
  }

  Future closeDbA() async {
    var dbClient = await db;
    dbClient.close();
  }

  Future saveChannel({required ChannelModel channel}) async {
    var dbClient = await db;
    final data = {
      'id': 'channel_id',
      'appConfigData': jsonEncode(channel.toJson())
    };
    try {
      int res = await dbClient.insert(Environment.appConfig, data);
      logger.d('channel saved  $res');
      return res;
    } catch (e) {
      await dbClient.delete(Environment.appConfig,
          where: 'id = ?', whereArgs: ['channel_id']);
      saveChannel(channel: channel);
    }
  }

  Future<ChannelModel?> getChannel() async {
    var dbClient = await db;

    try {
      List<Map<String, Object?>> res = await dbClient.query(
          Environment.appConfig,
          where: 'id = ?',
          whereArgs: ['channel_id']);
      Map<String, Object?> data = res.first;
      final channel =
          ChannelModel.fromJson(jsonDecode(data['appConfigData'] as String));
      logger.i('channelData', data);
      return channel;
    } catch (e) {
      rethrow;
    }
  }

  Future savePodcastChannel({required PodCastModel channel}) async {
    var dbClient = await db;
    final data = {
      'id': 'podcast_channel_id',
      'appConfigData': jsonEncode(channel.toJson())
    };
    try {
      int res = await dbClient.insert(Environment.appConfig, data);
      logger.d('PodCastModel channel saved  $res');
      return res;
    } catch (e) {
      await dbClient.delete(Environment.appConfig,
          where: 'id = ?', whereArgs: ['podcast_channel_id']);
      savePodcastChannel(channel: channel);
    }
  }

  Future<PodCastModel?> getPodcastChannel() async {
    var dbClient = await db;

    try {
      List<Map<String, Object?>> res = await dbClient.query(
          Environment.appConfig,
          where: 'id = ?',
          whereArgs: ['podcast_channel_id']);
      Map<String, Object?> data = res.first;
      final channel =
          PodCastModel.fromJson(jsonDecode(data['appConfigData'] as String));
      logger.i('PodCastModel', data);
      return channel;
    } catch (e) {
      return null;
    }
  }

  Future saveSleepTime({required int index}) async {
    logger.d(index);
    var dbClient = await db;
    final data = {
      'id': 'auto_off',
      'appConfigData': jsonEncode({'hours': index})
    };
    try {
      int res = await dbClient.insert(Environment.appConfig, data);
      logger.d('sleep time saved  $res');
      return res;
    } catch (e) {
      await dbClient.delete(Environment.appConfig,
          where: 'id = ?', whereArgs: ['auto_off']);
      saveSleepTime(index: index);
    }
  }

  Future<int?> getSleepTime() async {
    var dbClient = await db;

    try {
      List<Map<String, Object?>> res = await dbClient.query(
          Environment.appConfig,
          where: 'id = ?',
          whereArgs: ['auto_off']);
      Map<String, Object?> data =
          jsonDecode(res.first['appConfigData'].toString());

      logger.i('sleep time data', data);
      return data['hours'] as int;
    } catch (e) {
      return null;
    }
  }

  Future deleteSleepTime() async {
    try {
      var dbClient = await db;
      await dbClient.delete(Environment.appConfig,
          where: 'id = ?', whereArgs: ['auto_off']);
    } catch (e) {
      ///
    }
  }

  Future saveSwitchOffValue(bool value) async {
    var dbClient = await db;
    final data = {
      'id': 'auto_off_switch',
      'appConfigData': jsonEncode({'value': value})
    };
    try {
      int res = await dbClient.insert(Environment.appConfig, data);
      logger.d('sleep time saved  $res');
      return res;
    } catch (e) {
      await dbClient.delete(Environment.appConfig,
          where: 'id = ?', whereArgs: ['auto_off_switch']);
      saveSwitchOffValue(value);
    }
  }

  Future<bool?> getSwitchOffValue() async {
    var dbClient = await db;

    try {
      List<Map<String, Object?>> res = await dbClient.query(
          Environment.appConfig,
          where: 'id = ?',
          whereArgs: ['auto_off_switch']);
      Map<String, Object?> data =
          jsonDecode(res.first['appConfigData'].toString());

      logger.i('sleep time data', data);
      return data['value'] as bool?;
    } catch (e) {
      return null;
    }
  }
}
