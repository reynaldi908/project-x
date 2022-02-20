import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'food_photo_record.g.dart';

abstract class FoodPhotoRecord
    implements Built<FoodPhotoRecord, FoodPhotoRecordBuilder> {
  static Serializer<FoodPhotoRecord> get serializer =>
      _$foodPhotoRecordSerializer;

  @nullable
  int get id;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'updated_time')
  DateTime get updatedTime;

  @nullable
  @BuiltValueField(wireName: 'food_id')
  DocumentReference get foodId;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FoodPhotoRecordBuilder builder) => builder
    ..id = 0
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('food_photo');

  static Stream<FoodPhotoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FoodPhotoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FoodPhotoRecord._();
  factory FoodPhotoRecord([void Function(FoodPhotoRecordBuilder) updates]) =
      _$FoodPhotoRecord;

  static FoodPhotoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFoodPhotoRecordData({
  int id,
  String photoUrl,
  DateTime createdTime,
  DateTime updatedTime,
  DocumentReference foodId,
}) =>
    serializers.toFirestore(
        FoodPhotoRecord.serializer,
        FoodPhotoRecord((f) => f
          ..id = id
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..updatedTime = updatedTime
          ..foodId = foodId));
