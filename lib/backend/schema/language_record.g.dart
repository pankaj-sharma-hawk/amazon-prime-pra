// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LanguageRecord> _$languageRecordSerializer =
    new _$LanguageRecordSerializer();

class _$LanguageRecordSerializer
    implements StructuredSerializer<LanguageRecord> {
  @override
  final Iterable<Type> types = const [LanguageRecord, _$LanguageRecord];
  @override
  final String wireName = 'LanguageRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LanguageRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.lang;
    if (value != null) {
      result
        ..add('lang')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.langCode;
    if (value != null) {
      result
        ..add('lang_code')
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
  LanguageRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LanguageRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lang':
          result.lang = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lang_code':
          result.langCode = serializers.deserialize(value,
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

class _$LanguageRecord extends LanguageRecord {
  @override
  final String? lang;
  @override
  final String? langCode;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LanguageRecord([void Function(LanguageRecordBuilder)? updates]) =>
      (new LanguageRecordBuilder()..update(updates))._build();

  _$LanguageRecord._({this.lang, this.langCode, this.ffRef}) : super._();

  @override
  LanguageRecord rebuild(void Function(LanguageRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguageRecordBuilder toBuilder() =>
      new LanguageRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LanguageRecord &&
        lang == other.lang &&
        langCode == other.langCode &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, lang.hashCode), langCode.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LanguageRecord')
          ..add('lang', lang)
          ..add('langCode', langCode)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LanguageRecordBuilder
    implements Builder<LanguageRecord, LanguageRecordBuilder> {
  _$LanguageRecord? _$v;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  String? _langCode;
  String? get langCode => _$this._langCode;
  set langCode(String? langCode) => _$this._langCode = langCode;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LanguageRecordBuilder() {
    LanguageRecord._initializeBuilder(this);
  }

  LanguageRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lang = $v.lang;
      _langCode = $v.langCode;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LanguageRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LanguageRecord;
  }

  @override
  void update(void Function(LanguageRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LanguageRecord build() => _build();

  _$LanguageRecord _build() {
    final _$result = _$v ??
        new _$LanguageRecord._(lang: lang, langCode: langCode, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
