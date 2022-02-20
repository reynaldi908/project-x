import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'food_schedule_record.g.dart';

abstract class FoodScheduleRecord
    implements Built<FoodScheduleRecord, FoodScheduleRecordBuilder> {
  static Serializer<FoodScheduleRecord> get serializer =>
      _$foodScheduleRecordSerializer;

  @nullable
  int get id;

  @nullable
  @BuiltValueField(wireName: 'delivery_time')
  DateTime get deliveryTime;

  @nullable
  @BuiltValueField(wireName: 'last_order_time')
  DateTime get lastOrderTime;

  @nullable
  int get portion;

  @nullable
  @BuiltValueField(wireName: 'updated_time')
  DateTime get updatedTime;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  bool get active;

  @nullable
  bool get eatNow;

  @nullable
  @BuiltValueField(wireName: 'food_id')
  DocumentReference get foodId;

  @nullable
  @BuiltValueField(wireName: 'start_eat_now_time')
  DateTime get startEatNowTime;

  @nullable
  @BuiltValueField(wireName: 'finish_eat_now_time')
  DateTime get finishEatNowTime;

  @nullable
  @BuiltValueField(wireName: 'neighborhood_id')
  DocumentReference get neighborhoodId;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FoodScheduleRecordBuilder builder) => builder
    ..id = 0
    ..portion = 0
    ..active = false
    ..eatNow = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('food_schedule');

  static Stream<FoodScheduleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FoodScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  FoodScheduleRecord._();
  factory FoodScheduleRecord(
          [void Function(FoodScheduleRecordBuilder) updates]) =
      _$FoodScheduleRecord;

  static FoodScheduleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFoodScheduleRecordData({
  int id,
  DateTime deliveryTime,
  DateTime lastOrderTime,
  int portion,
  DateTime updatedTime,
  DateTime createdTime,
  bool active,
  bool eatNow,
  DocumentReference foodId,
  DateTime startEatNowTime,
  DateTime finishEatNowTime,
  DocumentReference neighborhoodId,
}) =>
    serializers.toFirestore(
        FoodScheduleRecord.serializer,
        FoodScheduleRecord((f) => f
          ..id = id
          ..deliveryTime = deliveryTime
          ..lastOrderTime = lastOrderTime
          ..portion = portion
          ..updatedTime = updatedTime
          ..createdTime = createdTime
          ..active = active
          ..eatNow = eatNow
          ..foodId = foodId
          ..startEatNowTime = startEatNowTime
          ..finishEatNowTime = finishEatNowTime
          ..neighborhoodId = neighborhoodId));
