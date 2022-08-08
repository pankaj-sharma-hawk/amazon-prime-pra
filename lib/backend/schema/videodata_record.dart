import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'videodata_record.g.dart';

abstract class VideodataRecord
    implements Built<VideodataRecord, VideodataRecordBuilder> {
  static Serializer<VideodataRecord> get serializer =>
      _$videodataRecordSerializer;

  int? get id;

  String? get name;

  String? get imageurl;

  String? get description;

  double? get imdbrating;

  int? get releasedyear;

  int? get minutes;

  String? get adultcategory;

  String? get category;

  String? get subcategory;

  String? get videourl;

  DateTime? get moviedate;

  BuiltList<String>? get languages;

  BuiltList<String>? get subtitlelang;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VideodataRecordBuilder builder) => builder
    ..id = 0
    ..name = ''
    ..imageurl = ''
    ..description = ''
    ..imdbrating = 0.0
    ..releasedyear = 0
    ..minutes = 0
    ..adultcategory = ''
    ..category = ''
    ..subcategory = ''
    ..videourl = ''
    ..languages = ListBuilder()
    ..subtitlelang = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videodata');

  static Stream<VideodataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideodataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideodataRecord._();
  factory VideodataRecord([void Function(VideodataRecordBuilder) updates]) =
      _$VideodataRecord;

  static VideodataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideodataRecordData({
  int? id,
  String? name,
  String? imageurl,
  String? description,
  double? imdbrating,
  int? releasedyear,
  int? minutes,
  String? adultcategory,
  String? category,
  String? subcategory,
  String? videourl,
  DateTime? moviedate,
}) {
  final firestoreData = serializers.toFirestore(
    VideodataRecord.serializer,
    VideodataRecord(
      (v) => v
        ..id = id
        ..name = name
        ..imageurl = imageurl
        ..description = description
        ..imdbrating = imdbrating
        ..releasedyear = releasedyear
        ..minutes = minutes
        ..adultcategory = adultcategory
        ..category = category
        ..subcategory = subcategory
        ..videourl = videourl
        ..moviedate = moviedate
        ..languages = null
        ..subtitlelang = null,
    ),
  );

  return firestoreData;
}
