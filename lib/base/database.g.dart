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
  static const VerificationMeta _millisecondsMeta =
      const VerificationMeta('milliseconds');
  @override
  late final GeneratedColumn<int> milliseconds = GeneratedColumn<int>(
      'milliseconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, minutes, seconds, milliseconds];
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
    if (data.containsKey('milliseconds')) {
      context.handle(
          _millisecondsMeta,
          milliseconds.isAcceptableOrUnknown(
              data['milliseconds']!, _millisecondsMeta));
    } else if (isInserting) {
      context.missing(_millisecondsMeta);
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
      minutes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}minutes'])!,
      seconds: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}seconds'])!,
      milliseconds: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}milliseconds'])!,
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
  final int minutes;
  final int seconds;
  final int milliseconds;
  const LapInformationEntityData(
      {required this.id,
      required this.minutes,
      required this.seconds,
      required this.milliseconds});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['minutes'] = Variable<int>(minutes);
    map['seconds'] = Variable<int>(seconds);
    map['milliseconds'] = Variable<int>(milliseconds);
    return map;
  }

  LapInformationEntityCompanion toCompanion(bool nullToAbsent) {
    return LapInformationEntityCompanion(
      id: Value(id),
      minutes: Value(minutes),
      seconds: Value(seconds),
      milliseconds: Value(milliseconds),
    );
  }

  factory LapInformationEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LapInformationEntityData(
      id: serializer.fromJson<int>(json['id']),
      minutes: serializer.fromJson<int>(json['minutes']),
      seconds: serializer.fromJson<int>(json['seconds']),
      milliseconds: serializer.fromJson<int>(json['milliseconds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'minutes': serializer.toJson<int>(minutes),
      'seconds': serializer.toJson<int>(seconds),
      'milliseconds': serializer.toJson<int>(milliseconds),
    };
  }

  LapInformationEntityData copyWith(
          {int? id, int? minutes, int? seconds, int? milliseconds}) =>
      LapInformationEntityData(
        id: id ?? this.id,
        minutes: minutes ?? this.minutes,
        seconds: seconds ?? this.seconds,
        milliseconds: milliseconds ?? this.milliseconds,
      );
  @override
  String toString() {
    return (StringBuffer('LapInformationEntityData(')
          ..write('id: $id, ')
          ..write('minutes: $minutes, ')
          ..write('seconds: $seconds, ')
          ..write('milliseconds: $milliseconds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, minutes, seconds, milliseconds);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LapInformationEntityData &&
          other.id == this.id &&
          other.minutes == this.minutes &&
          other.seconds == this.seconds &&
          other.milliseconds == this.milliseconds);
}

class LapInformationEntityCompanion
    extends UpdateCompanion<LapInformationEntityData> {
  final Value<int> id;
  final Value<int> minutes;
  final Value<int> seconds;
  final Value<int> milliseconds;
  const LapInformationEntityCompanion({
    this.id = const Value.absent(),
    this.minutes = const Value.absent(),
    this.seconds = const Value.absent(),
    this.milliseconds = const Value.absent(),
  });
  LapInformationEntityCompanion.insert({
    this.id = const Value.absent(),
    required int minutes,
    required int seconds,
    required int milliseconds,
  })  : minutes = Value(minutes),
        seconds = Value(seconds),
        milliseconds = Value(milliseconds);
  static Insertable<LapInformationEntityData> custom({
    Expression<int>? id,
    Expression<int>? minutes,
    Expression<int>? seconds,
    Expression<int>? milliseconds,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (minutes != null) 'minutes': minutes,
      if (seconds != null) 'seconds': seconds,
      if (milliseconds != null) 'milliseconds': milliseconds,
    });
  }

  LapInformationEntityCompanion copyWith(
      {Value<int>? id,
      Value<int>? minutes,
      Value<int>? seconds,
      Value<int>? milliseconds}) {
    return LapInformationEntityCompanion(
      id: id ?? this.id,
      minutes: minutes ?? this.minutes,
      seconds: seconds ?? this.seconds,
      milliseconds: milliseconds ?? this.milliseconds,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (minutes.present) {
      map['minutes'] = Variable<int>(minutes.value);
    }
    if (seconds.present) {
      map['seconds'] = Variable<int>(seconds.value);
    }
    if (milliseconds.present) {
      map['milliseconds'] = Variable<int>(milliseconds.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LapInformationEntityCompanion(')
          ..write('id: $id, ')
          ..write('minutes: $minutes, ')
          ..write('seconds: $seconds, ')
          ..write('milliseconds: $milliseconds')
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
