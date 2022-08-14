// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeriesStruct> _$seriesStructSerializer =
    new _$SeriesStructSerializer();

class _$SeriesStructSerializer implements StructuredSerializer<SeriesStruct> {
  @override
  final Iterable<Type> types = const [SeriesStruct, _$SeriesStruct];
  @override
  final String wireName = 'SeriesStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, SeriesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.min;
    if (value != null) {
      result
        ..add('min')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.videourl;
    if (value != null) {
      result
        ..add('videourl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SeriesStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeriesStructBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'videourl':
          result.videourl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$SeriesStruct extends SeriesStruct {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? min;
  @override
  final String? videourl;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$SeriesStruct([void Function(SeriesStructBuilder)? updates]) =>
      (new SeriesStructBuilder()..update(updates))._build();

  _$SeriesStruct._(
      {this.id,
      this.name,
      this.min,
      this.videourl,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'SeriesStruct', 'firestoreUtilData');
  }

  @override
  SeriesStruct rebuild(void Function(SeriesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesStructBuilder toBuilder() => new SeriesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesStruct &&
        id == other.id &&
        name == other.name &&
        min == other.min &&
        videourl == other.videourl &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), min.hashCode),
            videourl.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesStruct')
          ..add('id', id)
          ..add('name', name)
          ..add('min', min)
          ..add('videourl', videourl)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class SeriesStructBuilder
    implements Builder<SeriesStruct, SeriesStructBuilder> {
  _$SeriesStruct? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  String? _videourl;
  String? get videourl => _$this._videourl;
  set videourl(String? videourl) => _$this._videourl = videourl;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  SeriesStructBuilder() {
    SeriesStruct._initializeBuilder(this);
  }

  SeriesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _min = $v.min;
      _videourl = $v.videourl;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeriesStruct;
  }

  @override
  void update(void Function(SeriesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesStruct build() => _build();

  _$SeriesStruct _build() {
    final _$result = _$v ??
        new _$SeriesStruct._(
            id: id,
            name: name,
            min: min,
            videourl: videourl,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'SeriesStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
