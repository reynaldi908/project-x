import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cook_status_record.g.dart';

abstract class CookStatusRecord
    implements Built<CookStatusRecord, CookStatusRecordBuilder> {
  static Serializer<CookStatusRecord> get serializer =>
      _$cookStatusRecordSerializer;

  @nullable
  int get id;

  @nullable
  bool get active;

  @nullable
  @BuiltValueField(wireName: 'updated_time')
  DateTime get updatedTime;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'user_id')
  DocumentReference get userId;

  @nullable
  bool get verified;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CookStatusRecordBuilder builder) => builder
    ..id = 0
    ..active = false
    ..verified = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cook_status');

  static Stream<CookStatusRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CookStatusRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CookStatusRecord._();
  factory CookStatusRecord([void Function(CookStatusRecordBuilder) updates]) =
      _$CookStatusRecord;

  static CookStatusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCookStatusRecordData({
  int id,
  bool active,
  DateTime updatedTime,
  DateTime createdTime,
  DocumentReference userId,
  bool verified,
}) =>
    serializers.toFirestore(
        CookStatusRecord.serializer,
        CookStatusRecord((c) => c
          ..id = id
          ..active = active
          ..updatedTime = updatedTime
          ..createdTime = createdTime
          ..userId = userId
          ..verified = verified));
