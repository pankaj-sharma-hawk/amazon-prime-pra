import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'main_data_record.g.dart';

abstract class MainDataRecord
    implements Built<MainDataRecord, MainDataRecordBuilder> {
  static Serializer<MainDataRecord> get serializer =>
      _$mainDataRecordSerializer;

  int? get id;

  String? get category;

  String? get subcategory;

  BuiltList<MovieObjectStruct>? get movielist;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MainDataRecordBuilder builder) => builder
    ..id = 0
    ..category = ''
    ..subcategory = ''
    ..movielist = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MainData');

  static Stream<MainDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MainDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MainDataRecord._();
  factory MainDataRecord([void Function(MainDataRecordBuilder) updates]) =
      _$MainDataRecord;

  static MainDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMainDataRecordData({
  int? id,
  String? category,
  String? subcategory,
}) {
  final firestoreData = serializers.toFirestore(
    MainDataRecord.serializer,
    MainDataRecord(
      (m) => m
        ..id = id
        ..category = category
        ..subcategory = subcategory
        ..movielist = null,
    ),
  );

  return firestoreData;
}
