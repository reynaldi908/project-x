import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'food_record.g.dart';

abstract class FoodRecord implements Built<FoodRecord, FoodRecordBuilder> {
  static Serializer<FoodRecord> get serializer => _$foodRecordSerializer;

  @nullable
  int get id;

  @nullable
  String get name;

  @nullable
  String get description;

  @nullable
  int get price;

  @nullable
  @BuiltValueField(wireName: 'order_id')
  BuiltList<DocumentReference> get orderId;

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
  @BuiltValueField(wireName: 'user_like')
  BuiltList<DocumentReference> get userLike;

  @nullable
  bool get active;

  @nullable
  bool get pork;

  @nullable
  bool get verified;

  @nullable
  @BuiltValueField(wireName: 'cook_status')
  DocumentReference get cookStatus;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FoodRecordBuilder builder) => builder
    ..id = 0
    ..name = ''
    ..description = ''
    ..price = 0
    ..orderId = ListBuilder()
    ..userLike = ListBuilder()
    ..active = false
    ..pork = false
    ..verified = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('food');

  static Stream<FoodRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FoodRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FoodRecord._();
  factory FoodRecord([void Function(FoodRecordBuilder) updates]) = _$FoodRecord;

  static FoodRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFoodRecordData({
  int id,
  String name,
  String description,
  int price,
  DateTime updatedTime,
  DateTime createdTime,
  DocumentReference userId,
  bool active,
  bool pork,
  bool verified,
  DocumentReference cookStatus,
}) =>
    serializers.toFirestore(
        FoodRecord.serializer,
        FoodRecord((f) => f
          ..id = id
          ..name = name
          ..description = description
          ..price = price
          ..orderId = null
          ..updatedTime = updatedTime
          ..createdTime = createdTime
          ..userId = userId
          ..userLike = null
          ..active = active
          ..pork = pork
          ..verified = verified
          ..cookStatus = cookStatus));
