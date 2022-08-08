import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'home_design_record.g.dart';

abstract class HomeDesignRecord
    implements Built<HomeDesignRecord, HomeDesignRecordBuilder> {
  static Serializer<HomeDesignRecord> get serializer =>
      _$homeDesignRecordSerializer;

  int? get id;

  String? get category;

  String? get subcategory;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HomeDesignRecordBuilder builder) => builder
    ..id = 0
    ..category = ''
    ..subcategory = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HomeDesign');

  static Stream<HomeDesignRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HomeDesignRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HomeDesignRecord._();
  factory HomeDesignRecord([void Function(HomeDesignRecordBuilder) updates]) =
      _$HomeDesignRecord;

  static HomeDesignRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHomeDesignRecordData({
  int? id,
  String? category,
  String? subcategory,
}) {
  final firestoreData = serializers.toFirestore(
    HomeDesignRecord.serializer,
    HomeDesignRecord(
      (h) => h
        ..id = id
        ..category = category
        ..subcategory = subcategory,
    ),
  );

  return firestoreData;
}
