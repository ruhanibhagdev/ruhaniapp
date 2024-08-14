// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $LapInformationEntityTable extends LapInformationEntity
    with TableInfo<$LapInformationEntityTable, LapInformationEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LapInformationEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _hoursMeta = const VerificationMeta('hours');
  @override
  late final GeneratedColumn<int> hours = GeneratedColumn<int>(
      'hours', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _minutesMeta =
      const VerificationMeta('minutes');
  @override
  late final GeneratedColumn<int> minutes = GeneratedColumn<int>(
      'minutes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _secondsMeta =
      const VerificationMeta('seconds');
  @override
  late final GeneratedColumn<int> seconds = GeneratedColumn<int>(
      'seconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, hours, minutes, seconds];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lap_information_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<LapInformationEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('hours')) {
      context.handle(
          _hoursMeta, hours.isAcceptableOrUnknown(data['hours']!, _hoursMeta));
    } else if (isInserting) {
      context.missing(_hoursMeta);
    }
    if (data.containsKey('minutes')) {
      context.handle(_minutesMeta,
          minutes.isAcceptableOrUnknown(data['minutes']!, _minutesMeta));
    } else if (isInserting) {
      context.missing(_minutesMeta);
    }
    if (data.containsKey('seconds')) {
      context.handle(_secondsMeta,
          seconds.isAcceptableOrUnknown(data['seconds']!, _secondsMeta));
    } else if (isInserting) {
      context.missing(_secondsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LapInformationEntityData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LapInformationEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      hours: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hours'])!,
      minutes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}minutes'])!,
      seconds: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}seconds'])!,
    );
  }

  @override
  $LapInformationEntityTable createAlias(String alias) {
    return $LapInformationEntityTable(attachedDatabase, alias);
  }
}

class LapInformationEntityData extends DataClass
    implements Insertable<LapInformationEntityData> {
  final int id;
  final int hours;
  final int minutes;
  final int seconds;
  const LapInformationEntityData(
      {required this.id,
      required this.hours,
      required this.minutes,
      required this.seconds});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['hours'] = Variable<int>(hours);
    map['minutes'] = Variable<int>(minutes);
    map['seconds'] = Variable<int>(seconds);
    return map;
  }

  LapInformationEntityCompanion toCompanion(bool nullToAbsent) {
    return LapInformationEntityCompanion(
      id: Value(id),
      hours: Value(hours),
      minutes: Value(minutes),
      seconds: Value(seconds),
    );
  }

  factory LapInformationEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LapInformationEntityData(
      id: serializer.fromJson<int>(json['id']),
      hours: serializer.fromJson<int>(json['hours']),
      minutes: serializer.fromJson<int>(json['minutes']),
      seconds: serializer.fromJson<int>(json['seconds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'hours': serializer.toJson<int>(hours),
      'minutes': serializer.toJson<int>(minutes),
      'seconds': serializer.toJson<int>(seconds),
    };
  }

  LapInformationEntityData copyWith(
          {int? id, int? hours, int? minutes, int? seconds}) =>
      LapInformationEntityData(
        id: id ?? this.id,
        hours: hours ?? this.hours,
        minutes: minutes ?? this.minutes,
        seconds: seconds ?? this.seconds,
      );
  @override
  String toString() {
    return (StringBuffer('LapInformationEntityData(')
          ..write('id: $id, ')
          ..write('hours: $hours, ')
          ..write('minutes: $minutes, ')
          ..write('seconds: $seconds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, hours, minutes, seconds);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LapInformationEntityData &&
          other.id == this.id &&
          other.hours == this.hours &&
          other.minutes == this.minutes &&
          other.seconds == this.seconds);
}

class LapInformationEntityCompanion
    extends UpdateCompanion<LapInformationEntityData> {
  final Value<int> id;
  final Value<int> hours;
  final Value<int> minutes;
  final Value<int> seconds;
  const LapInformationEntityCompanion({
    this.id = const Value.absent(),
    this.hours = const Value.absent(),
    this.minutes = const Value.absent(),
    this.seconds = const Value.absent(),
  });
  LapInformationEntityCompanion.insert({
    this.id = const Value.absent(),
    required int hours,
    required int minutes,
    required int seconds,
  })  : hours = Value(hours),
        minutes = Value(minutes),
        seconds = Value(seconds);
  static Insertable<LapInformationEntityData> custom({
    Expression<int>? id,
    Expression<int>? hours,
    Expression<int>? minutes,
    Expression<int>? seconds,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hours != null) 'hours': hours,
      if (minutes != null) 'minutes': minutes,
      if (seconds != null) 'seconds': seconds,
    });
  }

  LapInformationEntityCompanion copyWith(
      {Value<int>? id,
      Value<int>? hours,
      Value<int>? minutes,
      Value<int>? seconds}) {
    return LapInformationEntityCompanion(
      id: id ?? this.id,
      hours: hours ?? this.hours,
      minutes: minutes ?? this.minutes,
      seconds: seconds ?? this.seconds,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (hours.present) {
      map['hours'] = Variable<int>(hours.value);
    }
    if (minutes.present) {
      map['minutes'] = Variable<int>(minutes.value);
    }
    if (seconds.present) {
      map['seconds'] = Variable<int>(seconds.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LapInformationEntityCompanion(')
          ..write('id: $id, ')
          ..write('hours: $hours, ')
          ..write('minutes: $minutes, ')
          ..write('seconds: $seconds')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final $LapInformationEntityTable lapInformationEntity =
      $LapInformationEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [lapInformationEntity];
}
