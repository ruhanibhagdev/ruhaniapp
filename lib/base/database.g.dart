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
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, hours, minutes, seconds, date];
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
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
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
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
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
  final String date;
  const LapInformationEntityData(
      {required this.id,
      required this.hours,
      required this.minutes,
      required this.seconds,
      required this.date});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['hours'] = Variable<int>(hours);
    map['minutes'] = Variable<int>(minutes);
    map['seconds'] = Variable<int>(seconds);
    map['date'] = Variable<String>(date);
    return map;
  }

  LapInformationEntityCompanion toCompanion(bool nullToAbsent) {
    return LapInformationEntityCompanion(
      id: Value(id),
      hours: Value(hours),
      minutes: Value(minutes),
      seconds: Value(seconds),
      date: Value(date),
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
      date: serializer.fromJson<String>(json['date']),
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
      'date': serializer.toJson<String>(date),
    };
  }

  LapInformationEntityData copyWith(
          {int? id, int? hours, int? minutes, int? seconds, String? date}) =>
      LapInformationEntityData(
        id: id ?? this.id,
        hours: hours ?? this.hours,
        minutes: minutes ?? this.minutes,
        seconds: seconds ?? this.seconds,
        date: date ?? this.date,
      );
  LapInformationEntityData copyWithCompanion(
      LapInformationEntityCompanion data) {
    return LapInformationEntityData(
      id: data.id.present ? data.id.value : this.id,
      hours: data.hours.present ? data.hours.value : this.hours,
      minutes: data.minutes.present ? data.minutes.value : this.minutes,
      seconds: data.seconds.present ? data.seconds.value : this.seconds,
      date: data.date.present ? data.date.value : this.date,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LapInformationEntityData(')
          ..write('id: $id, ')
          ..write('hours: $hours, ')
          ..write('minutes: $minutes, ')
          ..write('seconds: $seconds, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, hours, minutes, seconds, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LapInformationEntityData &&
          other.id == this.id &&
          other.hours == this.hours &&
          other.minutes == this.minutes &&
          other.seconds == this.seconds &&
          other.date == this.date);
}

class LapInformationEntityCompanion
    extends UpdateCompanion<LapInformationEntityData> {
  final Value<int> id;
  final Value<int> hours;
  final Value<int> minutes;
  final Value<int> seconds;
  final Value<String> date;
  const LapInformationEntityCompanion({
    this.id = const Value.absent(),
    this.hours = const Value.absent(),
    this.minutes = const Value.absent(),
    this.seconds = const Value.absent(),
    this.date = const Value.absent(),
  });
  LapInformationEntityCompanion.insert({
    this.id = const Value.absent(),
    required int hours,
    required int minutes,
    required int seconds,
    required String date,
  })  : hours = Value(hours),
        minutes = Value(minutes),
        seconds = Value(seconds),
        date = Value(date);
  static Insertable<LapInformationEntityData> custom({
    Expression<int>? id,
    Expression<int>? hours,
    Expression<int>? minutes,
    Expression<int>? seconds,
    Expression<String>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hours != null) 'hours': hours,
      if (minutes != null) 'minutes': minutes,
      if (seconds != null) 'seconds': seconds,
      if (date != null) 'date': date,
    });
  }

  LapInformationEntityCompanion copyWith(
      {Value<int>? id,
      Value<int>? hours,
      Value<int>? minutes,
      Value<int>? seconds,
      Value<String>? date}) {
    return LapInformationEntityCompanion(
      id: id ?? this.id,
      hours: hours ?? this.hours,
      minutes: minutes ?? this.minutes,
      seconds: seconds ?? this.seconds,
      date: date ?? this.date,
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
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LapInformationEntityCompanion(')
          ..write('id: $id, ')
          ..write('hours: $hours, ')
          ..write('minutes: $minutes, ')
          ..write('seconds: $seconds, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $LapInformationEntityTable lapInformationEntity =
      $LapInformationEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [lapInformationEntity];
}

typedef $$LapInformationEntityTableCreateCompanionBuilder
    = LapInformationEntityCompanion Function({
  Value<int> id,
  required int hours,
  required int minutes,
  required int seconds,
  required String date,
});
typedef $$LapInformationEntityTableUpdateCompanionBuilder
    = LapInformationEntityCompanion Function({
  Value<int> id,
  Value<int> hours,
  Value<int> minutes,
  Value<int> seconds,
  Value<String> date,
});

class $$LapInformationEntityTableFilterComposer
    extends Composer<_$AppDb, $LapInformationEntityTable> {
  $$LapInformationEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get hours => $composableBuilder(
      column: $table.hours, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get minutes => $composableBuilder(
      column: $table.minutes, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get seconds => $composableBuilder(
      column: $table.seconds, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));
}

class $$LapInformationEntityTableOrderingComposer
    extends Composer<_$AppDb, $LapInformationEntityTable> {
  $$LapInformationEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get hours => $composableBuilder(
      column: $table.hours, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get minutes => $composableBuilder(
      column: $table.minutes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get seconds => $composableBuilder(
      column: $table.seconds, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));
}

class $$LapInformationEntityTableAnnotationComposer
    extends Composer<_$AppDb, $LapInformationEntityTable> {
  $$LapInformationEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get hours =>
      $composableBuilder(column: $table.hours, builder: (column) => column);

  GeneratedColumn<int> get minutes =>
      $composableBuilder(column: $table.minutes, builder: (column) => column);

  GeneratedColumn<int> get seconds =>
      $composableBuilder(column: $table.seconds, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);
}

class $$LapInformationEntityTableTableManager extends RootTableManager<
    _$AppDb,
    $LapInformationEntityTable,
    LapInformationEntityData,
    $$LapInformationEntityTableFilterComposer,
    $$LapInformationEntityTableOrderingComposer,
    $$LapInformationEntityTableAnnotationComposer,
    $$LapInformationEntityTableCreateCompanionBuilder,
    $$LapInformationEntityTableUpdateCompanionBuilder,
    (
      LapInformationEntityData,
      BaseReferences<_$AppDb, $LapInformationEntityTable,
          LapInformationEntityData>
    ),
    LapInformationEntityData,
    PrefetchHooks Function()> {
  $$LapInformationEntityTableTableManager(
      _$AppDb db, $LapInformationEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LapInformationEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LapInformationEntityTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LapInformationEntityTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> hours = const Value.absent(),
            Value<int> minutes = const Value.absent(),
            Value<int> seconds = const Value.absent(),
            Value<String> date = const Value.absent(),
          }) =>
              LapInformationEntityCompanion(
            id: id,
            hours: hours,
            minutes: minutes,
            seconds: seconds,
            date: date,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int hours,
            required int minutes,
            required int seconds,
            required String date,
          }) =>
              LapInformationEntityCompanion.insert(
            id: id,
            hours: hours,
            minutes: minutes,
            seconds: seconds,
            date: date,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LapInformationEntityTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDb,
        $LapInformationEntityTable,
        LapInformationEntityData,
        $$LapInformationEntityTableFilterComposer,
        $$LapInformationEntityTableOrderingComposer,
        $$LapInformationEntityTableAnnotationComposer,
        $$LapInformationEntityTableCreateCompanionBuilder,
        $$LapInformationEntityTableUpdateCompanionBuilder,
        (
          LapInformationEntityData,
          BaseReferences<_$AppDb, $LapInformationEntityTable,
              LapInformationEntityData>
        ),
        LapInformationEntityData,
        PrefetchHooks Function()>;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$LapInformationEntityTableTableManager get lapInformationEntity =>
      $$LapInformationEntityTableTableManager(_db, _db.lapInformationEntity);
}
