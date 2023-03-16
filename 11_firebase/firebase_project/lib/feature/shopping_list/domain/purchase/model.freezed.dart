// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Purchase _$PurchaseFromJson(Map<String, dynamic> json) {
  return _Purchase.fromJson(json);
}

/// @nodoc
mixin _$Purchase {
  UuidValue get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  PurchaseStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseCopyWith<Purchase> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseCopyWith<$Res> {
  factory $PurchaseCopyWith(Purchase value, $Res Function(Purchase) then) = _$PurchaseCopyWithImpl<$Res, Purchase>;
  @useResult
  $Res call({UuidValue id, String title, List<Product> products, DateTime created, PurchaseStatus status});
}

/// @nodoc
class _$PurchaseCopyWithImpl<$Res, $Val extends Purchase> implements $PurchaseCopyWith<$Res> {
  _$PurchaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? products = null,
    Object? created = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PurchaseStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseCopyWith<$Res> implements $PurchaseCopyWith<$Res> {
  factory _$$_PurchaseCopyWith(_$_Purchase value, $Res Function(_$_Purchase) then) = __$$_PurchaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UuidValue id, String title, List<Product> products, DateTime created, PurchaseStatus status});
}

/// @nodoc
class __$$_PurchaseCopyWithImpl<$Res> extends _$PurchaseCopyWithImpl<$Res, _$_Purchase>
    implements _$$_PurchaseCopyWith<$Res> {
  __$$_PurchaseCopyWithImpl(_$_Purchase _value, $Res Function(_$_Purchase) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? products = null,
    Object? created = null,
    Object? status = null,
  }) {
    return _then(_$_Purchase(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PurchaseStatus,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: [UuidValueJsonConverter()])
class _$_Purchase extends _Purchase {
  const _$_Purchase(
      {required this.id,
      required this.title,
      required final List<Product> products,
      required this.created,
      required this.status})
      : _products = products,
        super._();

  factory _$_Purchase.fromJson(Map<String, dynamic> json) => _$$_PurchaseFromJson(json);

  @override
  final UuidValue id;
  @override
  final String title;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final DateTime created;
  @override
  final PurchaseStatus status;

  @override
  String toString() {
    return 'Purchase(id: $id, title: $title, products: $products, created: $created, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Purchase &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, const DeepCollectionEquality().hash(_products), created, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseCopyWith<_$_Purchase> get copyWith => __$$_PurchaseCopyWithImpl<_$_Purchase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseToJson(
      this,
    );
  }
}

abstract class _Purchase extends Purchase {
  const factory _Purchase(
      {required final UuidValue id,
      required final String title,
      required final List<Product> products,
      required final DateTime created,
      required final PurchaseStatus status}) = _$_Purchase;
  const _Purchase._() : super._();

  factory _Purchase.fromJson(Map<String, dynamic> json) = _$_Purchase.fromJson;

  @override
  UuidValue get id;
  @override
  String get title;
  @override
  List<Product> get products;
  @override
  DateTime get created;
  @override
  PurchaseStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseCopyWith<_$_Purchase> get copyWith => throw _privateConstructorUsedError;
}
