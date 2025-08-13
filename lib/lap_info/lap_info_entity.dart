import 'package:drift/drift.dart';

class LapInformationEntity extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get hours => integer()();
  IntColumn get minutes => integer()();
  IntColumn get seconds => integer()();
  TextColumn get date => text()();
}