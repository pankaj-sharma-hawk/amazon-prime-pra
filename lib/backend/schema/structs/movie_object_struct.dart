import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'movie_object_struct.g.dart';

abstract class MovieObjectStruct
    implements Built<MovieObjectStruct, MovieObjectStructBuilder> {
  static Serializer<MovieObjectStruct> get serializer =>
      _$movieObjectStructSerializer;

  int? get id;

  String? get name;

  String? get imageurl;

  String? get description;

  double? get imdbrating;

  int? get releasedyear;

  int? get minutes;

  String? get adultcat;

  String? get videolink;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(MovieObjectStructBuilder builder) => builder
    ..id = 0
    ..name = ''
    ..imageurl = ''
    ..description = ''
    ..imdbrating = 0.0
    ..releasedyear = 0
    ..minutes = 0
    ..adultcat = ''
    ..videolink = ''
    ..firestoreUtilData = FirestoreUtilData();

  MovieObjectStruct._();
  factory MovieObjectStruct([void Function(MovieObjectStructBuilder) updates]) =
      _$MovieObjectStruct;
}

MovieObjectStruct createMovieObjectStruct({
  int? id,
  String? name,
  String? imageurl,
  String? description,
  double? imdbrating,
  int? releasedyear,
  int? minutes,
  String? adultcat,
  String? videolink,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MovieObjectStruct(
      (m) => m
        ..id = id
        ..name = name
        ..imageurl = imageurl
        ..description = description
        ..imdbrating = imdbrating
        ..releasedyear = releasedyear
        ..minutes = minutes
        ..adultcat = adultcat
        ..videolink = videolink
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

MovieObjectStruct? updateMovieObjectStruct(
  MovieObjectStruct? movieObject, {
  bool clearUnsetFields = true,
}) =>
    movieObject != null
        ? (movieObject.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addMovieObjectStructData(
  Map<String, dynamic> firestoreData,
  MovieObjectStruct? movieObject,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (movieObject == null) {
    return;
  }
  if (movieObject.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && movieObject.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final movieObjectData =
      getMovieObjectFirestoreData(movieObject, forFieldValue);
  final nestedData =
      movieObjectData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = movieObject.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getMovieObjectFirestoreData(
  MovieObjectStruct? movieObject, [
  bool forFieldValue = false,
]) {
  if (movieObject == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(MovieObjectStruct.serializer, movieObject);

  // Add any Firestore field values
  movieObject.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMovieObjectListFirestoreData(
  List<MovieObjectStruct>? movieObjects,
) =>
    movieObjects?.map((m) => getMovieObjectFirestoreData(m, true)).toList() ??
    [];
