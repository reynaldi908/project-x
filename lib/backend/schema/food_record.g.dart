// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoodRecord> _$foodRecordSerializer = new _$FoodRecordSerializer();

class _$FoodRecordSerializer implements StructuredSerializer<FoodRecord> {
  @override
  final Iterable<Type> types = const [FoodRecord, _$FoodRecord];
  @override
  final String wireName = 'FoodRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FoodRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.orderId;
    if (value != null) {
      result
        ..add('order_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
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
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.userLike;
    if (value != null) {
      result
        ..add('user_like')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.pork;
    if (value != null) {
      result
        ..add('pork')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.verified;
    if (value != null) {
      result
        ..add('verified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cookStatus;
    if (value != null) {
      result
        ..add('cook_status')
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
  FoodRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoodRecordBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'order_id':
          result.orderId.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'updated_time':
          result.updatedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'user_like':
          result.userLike.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'pork':
          result.pork = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'verified':
          result.verified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cook_status':
          result.cookStatus = serializers.deserialize(value,
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

class _$FoodRecord extends FoodRecord {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int price;
  @override
  final BuiltList<DocumentReference<Object>> orderId;
  @override
  final DateTime updatedTime;
  @override
  final DateTime createdTime;
  @override
  final DocumentReference<Object> userId;
  @override
  final BuiltList<DocumentReference<Object>> userLike;
  @override
  final bool active;
  @override
  final bool pork;
  @override
  final bool verified;
  @override
  final DocumentReference<Object> cookStatus;
  @override
  final DocumentReference<Object> reference;

  factory _$FoodRecord([void Function(FoodRecordBuilder) updates]) =>
      (new FoodRecordBuilder()..update(updates)).build();

  _$FoodRecord._(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.orderId,
      this.updatedTime,
      this.createdTime,
      this.userId,
      this.userLike,
      this.active,
      this.pork,
      this.verified,
      this.cookStatus,
      this.reference})
      : super._();

  @override
  FoodRecord rebuild(void Function(FoodRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodRecordBuilder toBuilder() => new FoodRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodRecord &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        orderId == other.orderId &&
        updatedTime == other.updatedTime &&
        createdTime == other.createdTime &&
        userId == other.userId &&
        userLike == other.userLike &&
        active == other.active &&
        pork == other.pork &&
        verified == other.verified &&
        cookStatus == other.cookStatus &&
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
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        name.hashCode),
                                                    description.hashCode),
                                                price.hashCode),
                                            orderId.hashCode),
                                        updatedTime.hashCode),
                                    createdTime.hashCode),
                                userId.hashCode),
                            userLike.hashCode),
                        active.hashCode),
                    pork.hashCode),
                verified.hashCode),
            cookStatus.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodRecord')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('orderId', orderId)
          ..add('updatedTime', updatedTime)
          ..add('createdTime', createdTime)
          ..add('userId', userId)
          ..add('userLike', userLike)
          ..add('active', active)
          ..add('pork', pork)
          ..add('verified', verified)
          ..add('cookStatus', cookStatus)
          ..add('reference', reference))
        .toString();
  }
}

class FoodRecordBuilder implements Builder<FoodRecord, FoodRecordBuilder> {
  _$FoodRecord _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  ListBuilder<DocumentReference<Object>> _orderId;
  ListBuilder<DocumentReference<Object>> get orderId =>
      _$this._orderId ??= new ListBuilder<DocumentReference<Object>>();
  set orderId(ListBuilder<DocumentReference<Object>> orderId) =>
      _$this._orderId = orderId;

  DateTime _updatedTime;
  DateTime get updatedTime => _$this._updatedTime;
  set updatedTime(DateTime updatedTime) => _$this._updatedTime = updatedTime;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object> _userId;
  DocumentReference<Object> get userId => _$this._userId;
  set userId(DocumentReference<Object> userId) => _$this._userId = userId;

  ListBuilder<DocumentReference<Object>> _userLike;
  ListBuilder<DocumentReference<Object>> get userLike =>
      _$this._userLike ??= new ListBuilder<DocumentReference<Object>>();
  set userLike(ListBuilder<DocumentReference<Object>> userLike) =>
      _$this._userLike = userLike;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  bool _pork;
  bool get pork => _$this._pork;
  set pork(bool pork) => _$this._pork = pork;

  bool _verified;
  bool get verified => _$this._verified;
  set verified(bool verified) => _$this._verified = verified;

  DocumentReference<Object> _cookStatus;
  DocumentReference<Object> get cookStatus => _$this._cookStatus;
  set cookStatus(DocumentReference<Object> cookStatus) =>
      _$this._cookStatus = cookStatus;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FoodRecordBuilder() {
    FoodRecord._initializeBuilder(this);
  }

  FoodRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _orderId = $v.orderId?.toBuilder();
      _updatedTime = $v.updatedTime;
      _createdTime = $v.createdTime;
      _userId = $v.userId;
      _userLike = $v.userLike?.toBuilder();
      _active = $v.active;
      _pork = $v.pork;
      _verified = $v.verified;
      _cookStatus = $v.cookStatus;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoodRecord;
  }

  @override
  void update(void Function(FoodRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodRecord build() {
    _$FoodRecord _$result;
    try {
      _$result = _$v ??
          new _$FoodRecord._(
              id: id,
              name: name,
              description: description,
              price: price,
              orderId: _orderId?.build(),
              updatedTime: updatedTime,
              createdTime: createdTime,
              userId: userId,
              userLike: _userLike?.build(),
              active: active,
              pork: pork,
              verified: verified,
              cookStatus: cookStatus,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orderId';
        _orderId?.build();

        _$failedField = 'userLike';
        _userLike?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FoodRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
