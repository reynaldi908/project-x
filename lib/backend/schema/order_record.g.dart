// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderRecord> _$orderRecordSerializer = new _$OrderRecordSerializer();

class _$OrderRecordSerializer implements StructuredSerializer<OrderRecord> {
  @override
  final Iterable<Type> types = const [OrderRecord, _$OrderRecord];
  @override
  final String wireName = 'OrderRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.portion;
    if (value != null) {
      result
        ..add('portion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderFoodDetailsId;
    if (value != null) {
      result
        ..add('order_food_details_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.updatedTime;
    if (value != null) {
      result
        ..add('updated_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.eatNow;
    if (value != null) {
      result
        ..add('eat_now')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cookId;
    if (value != null) {
      result
        ..add('cook_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.foodId;
    if (value != null) {
      result
        ..add('food_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.foodScheduleId;
    if (value != null) {
      result
        ..add('food_schedule_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  OrderRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'portion':
          result.portion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_food_details_id':
          result.orderFoodDetailsId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'updated_time':
          result.updatedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'eat_now':
          result.eatNow = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cook_id':
          result.cookId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'food_id':
          result.foodId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'food_schedule_id':
          result.foodScheduleId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderRecord extends OrderRecord {
  @override
  final int id;
  @override
  final int portion;
  @override
  final int total;
  @override
  final String notes;
  @override
  final DocumentReference<Object> orderFoodDetailsId;
  @override
  final DocumentReference<Object> userId;
  @override
  final DateTime updatedTime;
  @override
  final DateTime createdTime;
  @override
  final bool eatNow;
  @override
  final DocumentReference<Object> cookId;
  @override
  final DocumentReference<Object> foodId;
  @override
  final DocumentReference<Object> foodScheduleId;
  @override
  final DocumentReference<Object> reference;

  factory _$OrderRecord([void Function(OrderRecordBuilder) updates]) =>
      (new OrderRecordBuilder()..update(updates)).build();

  _$OrderRecord._(
      {this.id,
      this.portion,
      this.total,
      this.notes,
      this.orderFoodDetailsId,
      this.userId,
      this.updatedTime,
      this.createdTime,
      this.eatNow,
      this.cookId,
      this.foodId,
      this.foodScheduleId,
      this.reference})
      : super._();

  @override
  OrderRecord rebuild(void Function(OrderRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderRecordBuilder toBuilder() => new OrderRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderRecord &&
        id == other.id &&
        portion == other.portion &&
        total == other.total &&
        notes == other.notes &&
        orderFoodDetailsId == other.orderFoodDetailsId &&
        userId == other.userId &&
        updatedTime == other.updatedTime &&
        createdTime == other.createdTime &&
        eatNow == other.eatNow &&
        cookId == other.cookId &&
        foodId == other.foodId &&
        foodScheduleId == other.foodScheduleId &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    portion.hashCode),
                                                total.hashCode),
                                            notes.hashCode),
                                        orderFoodDetailsId.hashCode),
                                    userId.hashCode),
                                updatedTime.hashCode),
                            createdTime.hashCode),
                        eatNow.hashCode),
                    cookId.hashCode),
                foodId.hashCode),
            foodScheduleId.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderRecord')
          ..add('id', id)
          ..add('portion', portion)
          ..add('total', total)
          ..add('notes', notes)
          ..add('orderFoodDetailsId', orderFoodDetailsId)
          ..add('userId', userId)
          ..add('updatedTime', updatedTime)
          ..add('createdTime', createdTime)
          ..add('eatNow', eatNow)
          ..add('cookId', cookId)
          ..add('foodId', foodId)
          ..add('foodScheduleId', foodScheduleId)
          ..add('reference', reference))
        .toString();
  }
}

class OrderRecordBuilder implements Builder<OrderRecord, OrderRecordBuilder> {
  _$OrderRecord _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _portion;
  int get portion => _$this._portion;
  set portion(int portion) => _$this._portion = portion;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  DocumentReference<Object> _orderFoodDetailsId;
  DocumentReference<Object> get orderFoodDetailsId =>
      _$this._orderFoodDetailsId;
  set orderFoodDetailsId(DocumentReference<Object> orderFoodDetailsId) =>
      _$this._orderFoodDetailsId = orderFoodDetailsId;

  DocumentReference<Object> _userId;
  DocumentReference<Object> get userId => _$this._userId;
  set userId(DocumentReference<Object> userId) => _$this._userId = userId;

  DateTime _updatedTime;
  DateTime get updatedTime => _$this._updatedTime;
  set updatedTime(DateTime updatedTime) => _$this._updatedTime = updatedTime;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  bool _eatNow;
  bool get eatNow => _$this._eatNow;
  set eatNow(bool eatNow) => _$this._eatNow = eatNow;

  DocumentReference<Object> _cookId;
  DocumentReference<Object> get cookId => _$this._cookId;
  set cookId(DocumentReference<Object> cookId) => _$this._cookId = cookId;

  DocumentReference<Object> _foodId;
  DocumentReference<Object> get foodId => _$this._foodId;
  set foodId(DocumentReference<Object> foodId) => _$this._foodId = foodId;

  DocumentReference<Object> _foodScheduleId;
  DocumentReference<Object> get foodScheduleId => _$this._foodScheduleId;
  set foodScheduleId(DocumentReference<Object> foodScheduleId) =>
      _$this._foodScheduleId = foodScheduleId;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OrderRecordBuilder() {
    OrderRecord._initializeBuilder(this);
  }

  OrderRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _portion = $v.portion;
      _total = $v.total;
      _notes = $v.notes;
      _orderFoodDetailsId = $v.orderFoodDetailsId;
      _userId = $v.userId;
      _updatedTime = $v.updatedTime;
      _createdTime = $v.createdTime;
      _eatNow = $v.eatNow;
      _cookId = $v.cookId;
      _foodId = $v.foodId;
      _foodScheduleId = $v.foodScheduleId;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderRecord;
  }

  @override
  void update(void Function(OrderRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderRecord build() {
    final _$result = _$v ??
        new _$OrderRecord._(
            id: id,
            portion: portion,
            total: total,
            notes: notes,
            orderFoodDetailsId: orderFoodDetailsId,
            userId: userId,
            updatedTime: updatedTime,
            createdTime: createdTime,
            eatNow: eatNow,
            cookId: cookId,
            foodId: foodId,
            foodScheduleId: foodScheduleId,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
