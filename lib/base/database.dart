import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../lap_info/lap_info_entity.dart';
import 'logger_utils.dart';

part 'database.g.dart';

@DriftDatabase(
    tables: [
      LapInformationEntity,
    ]
)
class AppDb extends _$AppDb {
  static final AppDb _instance = AppDb._internal();
  final _logger = LoggerUtils();
  final _TAG = "AppDb";

  factory AppDb() {
    return _instance;
  }

  AppDb._internal() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> closeConnection() async {
    _logger.log(_TAG, "Is the database connection open $_isConnectionOpen");
    await close();
  }
}

bool _isConnectionOpen = false;
late LazyDatabase _database;

LazyDatabase _openConnection() {
  final _logger = LoggerUtils();
  final _TAG = "AppDb";
  _logger.log(_TAG, "Is the database connection open in open connection $_isConnectionOpen");
  if( _isConnectionOpen){
    return _database;
  }
  else{
    _database = LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));

      return NativeDatabase.createInBackground(file);
    });
    _isConnectionOpen = true;
    return _database ;
  }
}





