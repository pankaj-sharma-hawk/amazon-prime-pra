// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videodata_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideodataRecord> _$videodataRecordSerializer =
    new _$VideodataRecordSerializer();

class _$VideodataRecordSerializer
    implements StructuredSerializer<VideodataRecord> {
  @override
  final Iterable<Type> types = const [VideodataRecord, _$VideodataRecord];
  @override
  final String wireName = 'VideodataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideodataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
    value = object.adultcategory;
    if (value != null) {
      result
        ..add('adultcategory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.videourl;
    if (value != null) {
      result
        ..add('videourl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moviedate;
    if (value != null) {
      result
        ..add('moviedate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.languages;
    if (value != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.subtitlelang;
    if (value != null) {
      result
        ..add('subtitlelang')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  VideodataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideodataRecordBuilder();

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
        case 'adultcategory':
          result.adultcategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subcategory':
          result.subcategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'videourl':
          result.videourl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moviedate':
          result.moviedate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'subtitlelang':
          result.subtitlelang.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
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

class _$VideodataRecord extends VideodataRecord {
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
  final String? adultcategory;
  @override
  final String? category;
  @override
  final String? subcategory;
  @override
  final String? videourl;
  @override
  final DateTime? moviedate;
  @override
  final BuiltList<String>? languages;
  @override
  final BuiltList<String>? subtitlelang;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VideodataRecord([void Function(VideodataRecordBuilder)? updates]) =>
      (new VideodataRecordBuilder()..update(updates))._build();

  _$VideodataRecord._(
      {this.id,
      this.name,
      this.imageurl,
      this.description,
      this.imdbrating,
      this.releasedyear,
      this.minutes,
      this.adultcategory,
      this.category,
      this.subcategory,
      this.videourl,
      this.moviedate,
      this.languages,
      this.subtitlelang,
      this.ffRef})
      : super._();

  @override
  VideodataRecord rebuild(void Function(VideodataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideodataRecordBuilder toBuilder() =>
      new VideodataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideodataRecord &&
        id == other.id &&
        name == other.name &&
        imageurl == other.imageurl &&
        description == other.description &&
        imdbrating == other.imdbrating &&
        releasedyear == other.releasedyear &&
        minutes == other.minutes &&
        adultcategory == other.adultcategory &&
        category == other.category &&
        subcategory == other.subcategory &&
        videourl == other.videourl &&
        moviedate == other.moviedate &&
        languages == other.languages &&
        subtitlelang == other.subtitlelang &&
        ffRef == other.ffRef;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc($jc(0, id.hashCode),
                                                            name.hashCode),
                                                        imageurl.hashCode),
                                                    description.hashCode),
                                                imdbrating.hashCode),
                                            releasedyear.hashCode),
                                        minutes.hashCode),
                                    adultcategory.hashCode),
                                category.hashCode),
                            subcategory.hashCode),
                        videourl.hashCode),
                    moviedate.hashCode),
                languages.hashCode),
            subtitlelang.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideodataRecord')
          ..add('id', id)
          ..add('name', name)
          ..add('imageurl', imageurl)
          ..add('description', description)
          ..add('imdbrating', imdbrating)
          ..add('releasedyear', releasedyear)
          ..add('minutes', minutes)
          ..add('adultcategory', adultcategory)
          ..add('category', category)
          ..add('subcategory', subcategory)
          ..add('videourl', videourl)
          ..add('moviedate', moviedate)
          ..add('languages', languages)
          ..add('subtitlelang', subtitlelang)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VideodataRecordBuilder
    implements Builder<VideodataRecord, VideodataRecordBuilder> {
  _$VideodataRecord? _$v;

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

  String? _adultcategory;
  String? get adultcategory => _$this._adultcategory;
  set adultcategory(String? adultcategory) =>
      _$this._adultcategory = adultcategory;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _subcategory;
  String? get subcategory => _$this._subcategory;
  set subcategory(String? subcategory) => _$this._subcategory = subcategory;

  String? _videourl;
  String? get videourl => _$this._videourl;
  set videourl(String? videourl) => _$this._videourl = videourl;

  DateTime? _moviedate;
  DateTime? get moviedate => _$this._moviedate;
  set moviedate(DateTime? moviedate) => _$this._moviedate = moviedate;

  ListBuilder<String>? _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= new ListBuilder<String>();
  set languages(ListBuilder<String>? languages) =>
      _$this._languages = languages;

  ListBuilder<String>? _subtitlelang;
  ListBuilder<String> get subtitlelang =>
      _$this._subtitlelang ??= new ListBuilder<String>();
  set subtitlelang(ListBuilder<String>? subtitlelang) =>
      _$this._subtitlelang = subtitlelang;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VideodataRecordBuilder() {
    VideodataRecord._initializeBuilder(this);
  }

  VideodataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _imageurl = $v.imageurl;
      _description = $v.description;
      _imdbrating = $v.imdbrating;
      _releasedyear = $v.releasedyear;
      _minutes = $v.minutes;
      _adultcategory = $v.adultcategory;
      _category = $v.category;
      _subcategory = $v.subcategory;
      _videourl = $v.videourl;
      _moviedate = $v.moviedate;
      _languages = $v.languages?.toBuilder();
      _subtitlelang = $v.subtitlelang?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideodataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideodataRecord;
  }

  @override
  void update(void Function(VideodataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideodataRecord build() => _build();

  _$VideodataRecord _build() {
    _$VideodataRecord _$result;
    try {
      _$result = _$v ??
          new _$VideodataRecord._(
              id: id,
              name: name,
              imageurl: imageurl,
              description: description,
              imdbrating: imdbrating,
              releasedyear: releasedyear,
              minutes: minutes,
              adultcategory: adultcategory,
              category: category,
              subcategory: subcategory,
              videourl: videourl,
              moviedate: moviedate,
              languages: _languages?.build(),
              subtitlelang: _subtitlelang?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'subtitlelang';
        _subtitlelang?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VideodataRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
