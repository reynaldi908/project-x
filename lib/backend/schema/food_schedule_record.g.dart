// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_schedule_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoodScheduleRecord> _$foodScheduleRecordSerializer =
    new _$FoodScheduleRecordSerializer();

class _$FoodScheduleRecordSerializer
    implements StructuredSerializer<FoodScheduleRecord> {
  @override
  final Iterable<Type> types = const [FoodScheduleRecord, _$FoodScheduleRecord];
  @override
  final String wireName = 'FoodScheduleRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FoodScheduleRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.deliveryTime;
    if (value != null) {
      result
        ..add('delivery_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.lastOrderTime;
    if (value != null) {
      result
        ..add('last_order_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.portion;
    if (value != null) {
      result
        ..add('portion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.eatNow;
    if (value != null) {
      result
        ..add('eatNow')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.foodId;
    if (value != null) {
      result
        ..add('food_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.startEatNowTime;
    if (value != null) {
      result
        ..add('start_eat_now_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.finishEatNowTime;
    if (value != null) {
      result
        ..add('finish_eat_now_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.neighborhoodId;
    if (value != null) {
      result
        ..add('neighborhood_id')
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
  FoodScheduleRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoodScheduleRecordBuilder();

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
        case 'delivery_time':
          result.deliveryTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'last_order_time':
          result.lastOrderTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'portion':
          result.portion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updated_time':
          result.updatedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'eatNow':
          result.eatNow = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'food_id':
          result.foodId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'start_eat_now_time':
          result.startEatNowTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'finish_eat_now_time':
          result.finishEatNowTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'neighborhood_id':
          result.neighborhoodId = serializers.deserialize(value,
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

class _$FoodScheduleRecord extends FoodScheduleRecord {
  @override
  final int id;
  @override
  final DateTime deliveryTime;
  @override
  final DateTime lastOrderTime;
  @override
  final int portion;
  @override
  final DateTime updatedTime;
  @override
  final DateTime createdTime;
  @override
  final bool active;
  @override
  final bool eatNow;
  @override
  final DocumentReference<Object> foodId;
  @override
  final DateTime startEatNowTime;
  @override
  final DateTime finishEatNowTime;
  @override
  final DocumentReference<Object> neighborhoodId;
  @override
  final DocumentReference<Object> reference;

  factory _$FoodScheduleRecord(
          [void Function(FoodScheduleRecordBuilder) updates]) =>
      (new FoodScheduleRecordBuilder()..update(updates)).build();

  _$FoodScheduleRecord._(
      {this.id,
      this.deliveryTime,
      this.lastOrderTime,
      this.portion,
      this.updatedTime,
      this.createdTime,
      this.active,
      this.eatNow,
      this.foodId,
      this.startEatNowTime,
      this.finishEatNowTime,
      this.neighborhoodId,
      this.reference})
      : super._();

  @override
  FoodScheduleRecord rebuild(
          void Function(FoodScheduleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodScheduleRecordBuilder toBuilder() =>
      new FoodScheduleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodScheduleRecord &&
        id == other.id &&
        deliveryTime == other.deliveryTime &&
        lastOrderTime == other.lastOrderTime &&
        portion == other.portion &&
        updatedTime == other.updatedTime &&
        createdTime == other.createdTime &&
        active == other.active &&
        eatNow == other.eatNow &&
        foodId == other.foodId &&
        startEatNowTime == other.startEatNowTime &&
        finishEatNowTime == other.finishEatNowTime &&
        neighborhoodId == other.neighborhoodId &&
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
                                                    deliveryTime.hashCode),
                                                lastOrderTime.hashCode),
                                            portion.hashCode),
                                        updatedTime.hashCode),
                                    createdTime.hashCode),
                                active.hashCode),
                            eatNow.hashCode),
                        foodId.hashCode),
                    startEatNowTime.hashCode),
                finishEatNowTime.hashCode),
            neighborhoodId.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodScheduleRecord')
          ..add('id', id)
          ..add('deliveryTime', deliveryTime)
          ..add('lastOrderTime', lastOrderTime)
          ..add('portion', portion)
          ..add('updatedTime', updatedTime)
          ..add('createdTime', createdTime)
          ..add('active', active)
          ..add('eatNow', eatNow)
          ..add('foodId', foodId)
          ..add('startEatNowTime', startEatNowTime)
          ..add('finishEatNowTime', finishEatNowTime)
          ..add('neighborhoodId', neighborhoodId)
          ..add('reference', reference))
        .toString();
  }
}

class FoodScheduleRecordBuilder
    implements Builder<FoodScheduleRecord, FoodScheduleRecordBuilder> {
  _$FoodScheduleRecord _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DateTime _deliveryTime;
  DateTime get deliveryTime => _$this._deliveryTime;
  set deliveryTime(DateTime deliveryTime) =>
      _$this._deliveryTime = deliveryTime;

  DateTime _lastOrderTime;
  DateTime get lastOrderTime => _$this._lastOrderTime;
  set lastOrderTime(DateTime lastOrderTime) =>
      _$this._lastOrderTime = lastOrderTime;

  int _portion;
  int get portion => _$this._portion;
  set portion(int portion) => _$this._portion = portion;

  DateTime _updatedTime;
  DateTime get updatedTime => _$this._updatedTime;
  set updatedTime(DateTime updatedTime) => _$this._updatedTime = updatedTime;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  bool _eatNow;
  bool get eatNow => _$this._eatNow;
  set eatNow(bool eatNow) => _$this._eatNow = eatNow;

  DocumentReference<Object> _foodId;
  DocumentReference<Object> get foodId => _$this._foodId;
  set foodId(DocumentReference<Object> foodId) => _$this._foodId = foodId;

  DateTime _startEatNowTime;
  DateTime get startEatNowTime => _$this._startEatNowTime;
  set startEatNowTime(DateTime startEatNowTime) =>
      _$this._startEatNowTime = startEatNowTime;

  DateTime _finishEatNowTime;
  DateTime get finishEatNowTime => _$this._finishEatNowTime;
  set finishEatNowTime(DateTime finishEatNowTime) =>
      _$this._finishEatNowTime = finishEatNowTime;

  DocumentReference<Object> _neighborhoodId;
  DocumentReference<Object> get neighborhoodId => _$this._neighborhoodId;
  set neighborhoodId(DocumentReference<Object> neighborhoodId) =>
      _$this._neighborhoodId = neighborhoodId;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FoodScheduleRecordBuilder() {
    FoodScheduleRecord._initializeBuilder(this);
  }

  FoodScheduleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _deliveryTime = $v.deliveryTime;
      _lastOrderTime = $v.lastOrderTime;
      _portion = $v.portion;
      _updatedTime = $v.updatedTime;
      _createdTime = $v.createdTime;
      _active = $v.active;
      _eatNow = $v.eatNow;
      _foodId = $v.foodId;
      _startEatNowTime = $v.startEatNowTime;
      _finishEatNowTime = $v.finishEatNowTime;
      _neighborhoodId = $v.neighborhoodId;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodScheduleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoodScheduleRecord;
  }

  @override
  void update(void Function(FoodScheduleRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodScheduleRecord build() {
    final _$result = _$v ??
        new _$FoodScheduleRecord._(
            id: id,
            deliveryTime: deliveryTime,
            lastOrderTime: lastOrderTime,
            portion: portion,
            updatedTime: updatedTime,
            createdTime: createdTime,
            active: active,
            eatNow: eatNow,
            foodId: foodId,
            startEatNowTime: startEatNowTime,
            finishEatNowTime: finishEatNowTime,
            neighborhoodId: neighborhoodId,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
