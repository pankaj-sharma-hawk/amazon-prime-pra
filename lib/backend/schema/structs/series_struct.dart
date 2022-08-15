import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'series_struct.g.dart';

abstract class SeriesStruct
    implements Built<SeriesStruct, SeriesStructBuilder> {
  static Serializer<SeriesStruct> get serializer => _$seriesStructSerializer;

  int? get id;

  String? get name;

  int? get min;

  String? get videourl;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(SeriesStructBuilder builder) => builder
    ..id = 0
    ..name = ''
    ..min = 0
    ..videourl = ''
    ..firestoreUtilData = FirestoreUtilData();

  SeriesStruct._();
  factory SeriesStruct([void Function(SeriesStructBuilder) updates]) =
      _$SeriesStruct;
}

SeriesStruct createSeriesStruct({
  int? id,
  String? name,
  int? min,
  String? videourl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SeriesStruct(
      (s) => s
        ..id = id
        ..name = name
        ..min = min
        ..videourl = videourl
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

SeriesStruct? updateSeriesStruct(
  SeriesStruct? series, {
  bool clearUnsetFields = true,
}) =>
    series != null
        ? (series.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addSeriesStructData(
  Map<String, dynamic> firestoreData,
  SeriesStruct? series,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (series == null) {
    return;
  }
  if (series.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && series.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final seriesData = getSeriesFirestoreData(series, forFieldValue);
  final nestedData = seriesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = series.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getSeriesFirestoreData(
  SeriesStruct? series, [
  bool forFieldValue = false,
]) {
  if (series == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(SeriesStruct.serializer, series);

  // Add any Firestore field values
  series.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSeriesListFirestoreData(
  List<SeriesStruct>? seriess,
) =>
    seriess?.map((s) => getSeriesFirestoreData(s, true)).toList() ?? [];
