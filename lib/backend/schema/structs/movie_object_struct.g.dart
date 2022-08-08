// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_object_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieObjectStruct> _$movieObjectStructSerializer =
    new _$MovieObjectStructSerializer();

class _$MovieObjectStructSerializer
    implements StructuredSerializer<MovieObjectStruct> {
  @override
  final Iterable<Type> types = const [MovieObjectStruct, _$MovieObjectStruct];
  @override
  final String wireName = 'MovieObjectStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieObjectStruct object,
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
    value = object.imageurl;
    if (value != null) {
      result
        ..add('imageurl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imdbrating;
    if (value != null) {
      result
        ..add('imdbrating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.releasedyear;
    if (value != null) {
      result
        ..add('releasedyear')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minutes;
    if (value != null) {
      result
        ..add('minutes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.adultcat;
    if (value != null) {
      result
        ..add('adultcat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videolink;
    if (value != null) {
      result
        ..add('videolink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieObjectStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieObjectStructBuilder();

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
        case 'imageurl':
          result.imageurl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imdbrating':
          result.imdbrating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'releasedyear':
          result.releasedyear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minutes':
          result.minutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'adultcat':
          result.adultcat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'videolink':
          result.videolink = serializers.deserialize(value,
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

class _$MovieObjectStruct extends MovieObjectStruct {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? imageurl;
  @override
  final String? description;
  @override
  final double? imdbrating;
  @override
  final int? releasedyear;
  @override
  final int? minutes;
  @override
  final String? adultcat;
  @override
  final String? videolink;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$MovieObjectStruct(
          [void Function(MovieObjectStructBuilder)? updates]) =>
      (new MovieObjectStructBuilder()..update(updates))._build();

  _$MovieObjectStruct._(
      {this.id,
      this.name,
      this.imageurl,
      this.description,
      this.imdbrating,
      this.releasedyear,
      this.minutes,
      this.adultcat,
      this.videolink,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'MovieObjectStruct', 'firestoreUtilData');
  }

  @override
  MovieObjectStruct rebuild(void Function(MovieObjectStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieObjectStructBuilder toBuilder() =>
      new MovieObjectStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieObjectStruct &&
        id == other.id &&
        name == other.name &&
        imageurl == other.imageurl &&
        description == other.description &&
        imdbrating == other.imdbrating &&
        releasedyear == other.releasedyear &&
        minutes == other.minutes &&
        adultcat == other.adultcat &&
        videolink == other.videolink &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, id.hashCode), name.hashCode),
                                    imageurl.hashCode),
                                description.hashCode),
                            imdbrating.hashCode),
                        releasedyear.hashCode),
                    minutes.hashCode),
                adultcat.hashCode),
            videolink.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieObjectStruct')
          ..add('id', id)
          ..add('name', name)
          ..add('imageurl', imageurl)
          ..add('description', description)
          ..add('imdbrating', imdbrating)
          ..add('releasedyear', releasedyear)
          ..add('minutes', minutes)
          ..add('adultcat', adultcat)
          ..add('videolink', videolink)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class MovieObjectStructBuilder
    implements Builder<MovieObjectStruct, MovieObjectStructBuilder> {
  _$MovieObjectStruct? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imageurl;
  String? get imageurl => _$this._imageurl;
  set imageurl(String? imageurl) => _$this._imageurl = imageurl;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _imdbrating;
  double? get imdbrating => _$this._imdbrating;
  set imdbrating(double? imdbrating) => _$this._imdbrating = imdbrating;

  int? _releasedyear;
  int? get releasedyear => _$this._releasedyear;
  set releasedyear(int? releasedyear) => _$this._releasedyear = releasedyear;

  int? _minutes;
  int? get minutes => _$this._minutes;
  set minutes(int? minutes) => _$this._minutes = minutes;

  String? _adultcat;
  String? get adultcat => _$this._adultcat;
  set adultcat(String? adultcat) => _$this._adultcat = adultcat;

  String? _videolink;
  String? get videolink => _$this._videolink;
  set videolink(String? videolink) => _$this._videolink = videolink;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  MovieObjectStructBuilder() {
    MovieObjectStruct._initializeBuilder(this);
  }

  MovieObjectStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _imageurl = $v.imageurl;
      _description = $v.description;
      _imdbrating = $v.imdbrating;
      _releasedyear = $v.releasedyear;
      _minutes = $v.minutes;
      _adultcat = $v.adultcat;
      _videolink = $v.videolink;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieObjectStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieObjectStruct;
  }

  @override
  void update(void Function(MovieObjectStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieObjectStruct build() => _build();

  _$MovieObjectStruct _build() {
    final _$result = _$v ??
        new _$MovieObjectStruct._(
            id: id,
            name: name,
            imageurl: imageurl,
            description: description,
            imdbrating: imdbrating,
            releasedyear: releasedyear,
            minutes: minutes,
            adultcat: adultcat,
            videolink: videolink,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'MovieObjectStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
