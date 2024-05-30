import 'package:drift/drift.dart';

class LapInformationEntity extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get minutes => integer()();
  IntColumn get seconds => integer()();
  IntColumn get milliseconds => integer()();
}