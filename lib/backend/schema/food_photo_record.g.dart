// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_photo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoodPhotoRecord> _$foodPhotoRecordSerializer =
    new _$FoodPhotoRecordSerializer();

class _$FoodPhotoRecordSerializer
    implements StructuredSerializer<FoodPhotoRecord> {
  @override
  final Iterable<Type> types = const [FoodPhotoRecord, _$FoodPhotoRecord];
  @override
  final String wireName = 'FoodPhotoRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FoodPhotoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedTime;
    if (value != null) {
      result
        ..add('updated_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.foodId;
    if (value != null) {
      result
        ..add('food_id')
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
  FoodPhotoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoodPhotoRecordBuilder();

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
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_time':
          result.updatedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'food_id':
          result.foodId = serializers.deserialize(value,
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

class _$FoodPhotoRecord extends FoodPhotoRecord {
  @override
  final int id;
  @override
  final String photoUrl;
  @override
  final DateTime createdTime;
  @override
  final DateTime updatedTime;
  @override
  final DocumentReference<Object> foodId;
  @override
  final DocumentReference<Object> reference;

  factory _$FoodPhotoRecord([void Function(FoodPhotoRecordBuilder) updates]) =>
      (new FoodPhotoRecordBuilder()..update(updates)).build();

  _$FoodPhotoRecord._(
      {this.id,
      this.photoUrl,
      this.createdTime,
      this.updatedTime,
      this.foodId,
      this.reference})
      : super._();

  @override
  FoodPhotoRecord rebuild(void Function(FoodPhotoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodPhotoRecordBuilder toBuilder() =>
      new FoodPhotoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodPhotoRecord &&
        id == other.id &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        updatedTime == other.updatedTime &&
        foodId == other.foodId &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), photoUrl.hashCode),
                    createdTime.hashCode),
                updatedTime.hashCode),
            foodId.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodPhotoRecord')
          ..add('id', id)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('updatedTime', updatedTime)
          ..add('foodId', foodId)
          ..add('reference', reference))
        .toString();
  }
}

class FoodPhotoRecordBuilder
    implements Builder<FoodPhotoRecord, FoodPhotoRecordBuilder> {
  _$FoodPhotoRecord _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  DateTime _updatedTime;
  DateTime get updatedTime => _$this._updatedTime;
  set updatedTime(DateTime updatedTime) => _$this._updatedTime = updatedTime;

  DocumentReference<Object> _foodId;
  DocumentReference<Object> get foodId => _$this._foodId;
  set foodId(DocumentReference<Object> foodId) => _$this._foodId = foodId;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FoodPhotoRecordBuilder() {
    FoodPhotoRecord._initializeBuilder(this);
  }

  FoodPhotoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _updatedTime = $v.updatedTime;
      _foodId = $v.foodId;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodPhotoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoodPhotoRecord;
  }

  @override
  void update(void Function(FoodPhotoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodPhotoRecord build() {
    final _$result = _$v ??
        new _$FoodPhotoRecord._(
            id: id,
            photoUrl: photoUrl,
            createdTime: createdTime,
            updatedTime: updatedTime,
            foodId: foodId,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
