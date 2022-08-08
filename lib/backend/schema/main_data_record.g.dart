// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MainDataRecord> _$mainDataRecordSerializer =
    new _$MainDataRecordSerializer();

class _$MainDataRecordSerializer
    implements StructuredSerializer<MainDataRecord> {
  @override
  final Iterable<Type> types = const [MainDataRecord, _$MainDataRecord];
  @override
  final String wireName = 'MainDataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MainDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subcategory;
    if (value != null) {
      result
        ..add('subcategory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.movielist;
    if (value != null) {
      result
        ..add('movielist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(MovieObjectStruct)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MainDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subcategory':
          result.subcategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'movielist':
          result.movielist.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieObjectStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MainDataRecord extends MainDataRecord {
  @override
  final int? id;
  @override
  final String? category;
  @override
  final String? subcategory;
  @override
  final BuiltList<MovieObjectStruct>? movielist;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MainDataRecord([void Function(MainDataRecordBuilder)? updates]) =>
      (new MainDataRecordBuilder()..update(updates))._build();

  _$MainDataRecord._(
      {this.id, this.category, this.subcategory, this.movielist, this.ffRef})
      : super._();

  @override
  MainDataRecord rebuild(void Function(MainDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainDataRecordBuilder toBuilder() =>
      new MainDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainDataRecord &&
        id == other.id &&
        category == other.category &&
        subcategory == other.subcategory &&
        movielist == other.movielist &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), category.hashCode),
                subcategory.hashCode),
            movielist.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MainDataRecord')
          ..add('id', id)
          ..add('category', category)
          ..add('subcategory', subcategory)
          ..add('movielist', movielist)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MainDataRecordBuilder
    implements Builder<MainDataRecord, MainDataRecordBuilder> {
  _$MainDataRecord? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _subcategory;
  String? get subcategory => _$this._subcategory;
  set subcategory(String? subcategory) => _$this._subcategory = subcategory;

  ListBuilder<MovieObjectStruct>? _movielist;
  ListBuilder<MovieObjectStruct> get movielist =>
      _$this._movielist ??= new ListBuilder<MovieObjectStruct>();
  set movielist(ListBuilder<MovieObjectStruct>? movielist) =>
      _$this._movielist = movielist;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MainDataRecordBuilder() {
    MainDataRecord._initializeBuilder(this);
  }

  MainDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _category = $v.category;
      _subcategory = $v.subcategory;
      _movielist = $v.movielist?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainDataRecord;
  }

  @override
  void update(void Function(MainDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainDataRecord build() => _build();

  _$MainDataRecord _build() {
    _$MainDataRecord _$result;
    try {
      _$result = _$v ??
          new _$MainDataRecord._(
              id: id,
              category: category,
              subcategory: subcategory,
              movielist: _movielist?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movielist';
        _movielist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MainDataRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
