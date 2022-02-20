import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_record.g.dart';

abstract class OrderRecord implements Built<OrderRecord, OrderRecordBuilder> {
  static Serializer<OrderRecord> get serializer => _$orderRecordSerializer;

  @nullable
  int get id;

  @nullable
  int get portion;

  @nullable
  int get total;

  @nullable
  String get notes;

  @nullable
  @BuiltValueField(wireName: 'order_food_details_id')
  DocumentReference get orderFoodDetailsId;

  @nullable
  @BuiltValueField(wireName: 'user_id')
  DocumentReference get userId;

  @nullable
  @BuiltValueField(wireName: 'updated_time')
  DateTime get updatedTime;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'eat_now')
  bool get eatNow;

  @nullable
  @BuiltValueField(wireName: 'cook_id')
  DocumentReference get cookId;

  @nullable
  @BuiltValueField(wireName: 'food_id')
  DocumentReference get foodId;

  @nullable
  @BuiltValueField(wireName: 'food_schedule_id')
  DocumentReference get foodScheduleId;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrderRecordBuilder builder) => builder
    ..id = 0
    ..portion = 0
    ..total = 0
    ..notes = ''
    ..eatNow = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrderRecord._();
  factory OrderRecord([void Function(OrderRecordBuilder) updates]) =
      _$OrderRecord;

  static OrderRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrderRecordData({
  int id,
  int portion,
  int total,
  String notes,
  DocumentReference orderFoodDetailsId,
  DocumentReference userId,
  DateTime updatedTime,
  DateTime createdTime,
  bool eatNow,
  DocumentReference cookId,
  DocumentReference foodId,
  DocumentReference foodScheduleId,
}) =>
    serializers.toFirestore(
        OrderRecord.serializer,
        OrderRecord((o) => o
          ..id = id
          ..portion = portion
          ..total = total
          ..notes = notes
          ..orderFoodDetailsId = orderFoodDetailsId
          ..userId = userId
          ..updatedTime = updatedTime
          ..createdTime = createdTime
          ..eatNow = eatNow
          ..cookId = cookId
          ..foodId = foodId
          ..foodScheduleId = foodScheduleId));
