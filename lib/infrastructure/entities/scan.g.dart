// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetScanCollection on Isar {
  IsarCollection<Scan> get scans => this.collection();
}

const ScanSchema = CollectionSchema(
  name: r'Scan',
  id: 3463542377616345905,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'tipo': PropertySchema(
      id: 1,
      name: r'tipo',
      type: IsarType.string,
    ),
    r'valor': PropertySchema(
      id: 2,
      name: r'valor',
      type: IsarType.string,
    )
  },
  estimateSize: _scanEstimateSize,
  serialize: _scanSerialize,
  deserialize: _scanDeserialize,
  deserializeProp: _scanDeserializeProp,
  idName: r'idIsar',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _scanGetId,
  getLinks: _scanGetLinks,
  attach: _scanAttach,
  version: '3.1.0+1',
);

int _scanEstimateSize(
  Scan object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.tipo.length * 3;
  bytesCount += 3 + object.valor.length * 3;
  return bytesCount;
}

void _scanSerialize(
  Scan object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.tipo);
  writer.writeString(offsets[2], object.valor);
}

Scan _scanDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Scan(
    tipo: reader.readString(offsets[1]),
    valor: reader.readString(offsets[2]),
  );
  object.id = reader.readLongOrNull(offsets[0]);
  object.idIsar = id;
  return object;
}

P _scanDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _scanGetId(Scan object) {
  return object.idIsar;
}

List<IsarLinkBase<dynamic>> _scanGetLinks(Scan object) {
  return [];
}

void _scanAttach(IsarCollection<dynamic> col, Id id, Scan object) {
  object.idIsar = id;
}

extension ScanQueryWhereSort on QueryBuilder<Scan, Scan, QWhere> {
  QueryBuilder<Scan, Scan, QAfterWhere> anyIdIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ScanQueryWhere on QueryBuilder<Scan, Scan, QWhereClause> {
  QueryBuilder<Scan, Scan, QAfterWhereClause> idIsarEqualTo(Id idIsar) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idIsar,
        upper: idIsar,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterWhereClause> idIsarNotEqualTo(Id idIsar) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idIsar, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idIsar, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idIsar, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idIsar, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Scan, Scan, QAfterWhereClause> idIsarGreaterThan(Id idIsar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idIsar, includeLower: include),
      );
    });
  }

  QueryBuilder<Scan, Scan, QAfterWhereClause> idIsarLessThan(Id idIsar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idIsar, includeUpper: include),
      );
    });
  }

  QueryBuilder<Scan, Scan, QAfterWhereClause> idIsarBetween(
    Id lowerIdIsar,
    Id upperIdIsar, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdIsar,
        includeLower: includeLower,
        upper: upperIdIsar,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ScanQueryFilter on QueryBuilder<Scan, Scan, QFilterCondition> {
  QueryBuilder<Scan, Scan, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> idIsarEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idIsar',
        value: value,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> idIsarGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idIsar',
        value: value,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> idIsarLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idIsar',
        value: value,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> idIsarBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idIsar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> tipoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> tipoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> tipoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> tipoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> tipoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> tipoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> tipoContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> tipoMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> tipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> tipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> valorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> valorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> valorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> valorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> valorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> valorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> valorContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> valorMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> valorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: '',
      ));
    });
  }

  QueryBuilder<Scan, Scan, QAfterFilterCondition> valorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valor',
        value: '',
      ));
    });
  }
}

extension ScanQueryObject on QueryBuilder<Scan, Scan, QFilterCondition> {}

extension ScanQueryLinks on QueryBuilder<Scan, Scan, QFilterCondition> {}

extension ScanQuerySortBy on QueryBuilder<Scan, Scan, QSortBy> {
  QueryBuilder<Scan, Scan, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> sortByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> sortByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> sortByValor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valor', Sort.asc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> sortByValorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valor', Sort.desc);
    });
  }
}

extension ScanQuerySortThenBy on QueryBuilder<Scan, Scan, QSortThenBy> {
  QueryBuilder<Scan, Scan, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> thenByIdIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idIsar', Sort.asc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> thenByIdIsarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idIsar', Sort.desc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> thenByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> thenByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> thenByValor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valor', Sort.asc);
    });
  }

  QueryBuilder<Scan, Scan, QAfterSortBy> thenByValorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valor', Sort.desc);
    });
  }
}

extension ScanQueryWhereDistinct on QueryBuilder<Scan, Scan, QDistinct> {
  QueryBuilder<Scan, Scan, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<Scan, Scan, QDistinct> distinctByTipo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Scan, Scan, QDistinct> distinctByValor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'valor', caseSensitive: caseSensitive);
    });
  }
}

extension ScanQueryProperty on QueryBuilder<Scan, Scan, QQueryProperty> {
  QueryBuilder<Scan, int, QQueryOperations> idIsarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idIsar');
    });
  }

  QueryBuilder<Scan, int?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Scan, String, QQueryOperations> tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipo');
    });
  }

  QueryBuilder<Scan, String, QQueryOperations> valorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'valor');
    });
  }
}
