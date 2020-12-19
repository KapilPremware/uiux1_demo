import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveHelper{

  static final _dbName = "myDatabase";

  //making it a singleton class
  HiveHelper._privateConstructor();
  static final HiveHelper instance = HiveHelper._privateConstructor();

  static Box _database;

  Future<Box> get database async{
    if(_database != null) return _database;

    _database = await _initiateDatabase();
    return _database;
  }

  _initiateDatabase () async{
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    _database = await Hive.openBox(_dbName);
    return _database;
  }

  Future<int> dbPut(dynamic key, dynamic value) async{
    try {
      Box db = await instance.database;
      await db.put(key, value);
      return 1;
    } on Exception catch (e) {
      return 0;
    }
  }

  Future<dynamic> dbGet(dynamic key) async{
    try {
      Box db = await instance.database;
      var res = await db.get(key);
      return res;
    } on Exception catch (e) {
      return 0;
    }
  }
}