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

  BuiltList<SeriesStruct>? get episodesinfo;

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
    ..subtitlelang = ListBuilder()
    ..episodesinfo = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videodata');

  static Stream<VideodataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideodataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static VideodataRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      VideodataRecord(
        (c) => c
          ..id = snapshot.data['id']?.round()
          ..name = snapshot.data['name']
          ..imageurl = snapshot.data['imageurl']
          ..description = snapshot.data['description']
          ..imdbrating = snapshot.data['imdbrating']?.toDouble()
          ..releasedyear = snapshot.data['releasedyear']?.round()
          ..minutes = snapshot.data['minutes']?.round()
          ..adultcategory = snapshot.data['adultcategory']
          ..category = snapshot.data['category']
          ..subcategory = snapshot.data['subcategory']
          ..videourl = snapshot.data['videourl']
          ..moviedate = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['moviedate']))
          ..languages = safeGet(() => ListBuilder(snapshot.data['languages']))
          ..subtitlelang =
              safeGet(() => ListBuilder(snapshot.data['subtitlelang']))
          ..episodesinfo =
              safeGet(() => ListBuilder(snapshot.data['episodesinfo']))
          ..ffRef = VideodataRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<VideodataRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'videodata',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

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
        ..subtitlelang = null
        ..episodesinfo = null,
    ),
  );

  return firestoreData;
}
