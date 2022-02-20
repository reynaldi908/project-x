// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cook_status_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CookStatusRecord> _$cookStatusRecordSerializer =
    new _$CookStatusRecordSerializer();

class _$CookStatusRecordSerializer
    implements StructuredSerializer<CookStatusRecord> {
  @override
  final Iterable<Type> types = const [CookStatusRecord, _$CookStatusRecord];
  @override
  final String wireName = 'CookStatusRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CookStatusRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
    value = object.verified;
    if (value != null) {
      result
        ..add('verified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  CookStatusRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CookStatusRecordBuilder();

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
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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
        case 'verified':
          result.verified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$CookStatusRecord extends CookStatusRecord {
  @override
  final int id;
  @override
  final bool active;
  @override
  final DateTime updatedTime;
  @override
  final DateTime createdTime;
  @override
  final DocumentReference<Object> userId;
  @override
  final bool verified;
  @override
  final DocumentReference<Object> reference;

  factory _$CookStatusRecord(
          [void Function(CookStatusRecordBuilder) updates]) =>
      (new CookStatusRecordBuilder()..update(updates)).build();

  _$CookStatusRecord._(
      {this.id,
      this.active,
      this.updatedTime,
      this.createdTime,
      this.userId,
      this.verified,
      this.reference})
      : super._();

  @override
  CookStatusRecord rebuild(void Function(CookStatusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CookStatusRecordBuilder toBuilder() =>
      new CookStatusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CookStatusRecord &&
        id == other.id &&
        active == other.active &&
        updatedTime == other.updatedTime &&
        createdTime == other.createdTime &&
        userId == other.userId &&
        verified == other.verified &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), active.hashCode),
                        updatedTime.hashCode),
                    createdTime.hashCode),
                userId.hashCode),
            verified.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CookStatusRecord')
          ..add('id', id)
          ..add('active', active)
          ..add('updatedTime', updatedTime)
          ..add('createdTime', createdTime)
          ..add('userId', userId)
          ..add('verified', verified)
          ..add('reference', reference))
        .toString();
  }
}

class CookStatusRecordBuilder
    implements Builder<CookStatusRecord, CookStatusRecordBuilder> {
  _$CookStatusRecord _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  DateTime _updatedTime;
  DateTime get updatedTime => _$this._updatedTime;
  set updatedTime(DateTime updatedTime) => _$this._updatedTime = updatedTime;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object> _userId;
  DocumentReference<Object> get userId => _$this._userId;
  set userId(DocumentReference<Object> userId) => _$this._userId = userId;

  bool _verified;
  bool get verified => _$this._verified;
  set verified(bool verified) => _$this._verified = verified;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CookStatusRecordBuilder() {
    CookStatusRecord._initializeBuilder(this);
  }

  CookStatusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _active = $v.active;
      _updatedTime = $v.updatedTime;
      _createdTime = $v.createdTime;
      _userId = $v.userId;
      _verified = $v.verified;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CookStatusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CookStatusRecord;
  }

  @override
  void update(void Function(CookStatusRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CookStatusRecord build() {
    final _$result = _$v ??
        new _$CookStatusRecord._(
            id: id,
            active: active,
            updatedTime: updatedTime,
            createdTime: createdTime,
            userId: userId,
            verified: verified,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
