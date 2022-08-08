// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_design_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeDesignRecord> _$homeDesignRecordSerializer =
    new _$HomeDesignRecordSerializer();

class _$HomeDesignRecordSerializer
    implements StructuredSerializer<HomeDesignRecord> {
  @override
  final Iterable<Type> types = const [HomeDesignRecord, _$HomeDesignRecord];
  @override
  final String wireName = 'HomeDesignRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HomeDesignRecord object,
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
  HomeDesignRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeDesignRecordBuilder();

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

class _$HomeDesignRecord extends HomeDesignRecord {
  @override
  final int? id;
  @override
  final String? category;
  @override
  final String? subcategory;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HomeDesignRecord(
          [void Function(HomeDesignRecordBuilder)? updates]) =>
      (new HomeDesignRecordBuilder()..update(updates))._build();

  _$HomeDesignRecord._({this.id, this.category, this.subcategory, this.ffRef})
      : super._();

  @override
  HomeDesignRecord rebuild(void Function(HomeDesignRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeDesignRecordBuilder toBuilder() =>
      new HomeDesignRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeDesignRecord &&
        id == other.id &&
        category == other.category &&
        subcategory == other.subcategory &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), category.hashCode), subcategory.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeDesignRecord')
          ..add('id', id)
          ..add('category', category)
          ..add('subcategory', subcategory)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HomeDesignRecordBuilder
    implements Builder<HomeDesignRecord, HomeDesignRecordBuilder> {
  _$HomeDesignRecord? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _subcategory;
  String? get subcategory => _$this._subcategory;
  set subcategory(String? subcategory) => _$this._subcategory = subcategory;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HomeDesignRecordBuilder() {
    HomeDesignRecord._initializeBuilder(this);
  }

  HomeDesignRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _category = $v.category;
      _subcategory = $v.subcategory;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeDesignRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeDesignRecord;
  }

  @override
  void update(void Function(HomeDesignRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeDesignRecord build() => _build();

  _$HomeDesignRecord _build() {
    final _$result = _$v ??
        new _$HomeDesignRecord._(
            id: id, category: category, subcategory: subcategory, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
