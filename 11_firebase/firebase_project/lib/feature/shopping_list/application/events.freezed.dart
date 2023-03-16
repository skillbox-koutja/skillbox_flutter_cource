// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingListEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Purchase model) addPurchase,
    required TResult Function(PurchaseEntity entity) deletePurchase,
    required TResult Function(PurchaseEntity entity) donePurchase,
    required TResult Function(PurchaseEntity entity) cancelPurchase,
    required TResult Function(PurchaseEntity entity) clearPurchase,
    required TResult Function(PurchaseEntity entity) selectPurchase,
    required TResult Function(PurchaseEntity entity) unselectPurchase,
    required TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe) fetchPurchases,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Purchase model)? addPurchase,
    TResult? Function(PurchaseEntity entity)? deletePurchase,
    TResult? Function(PurchaseEntity entity)? donePurchase,
    TResult? Function(PurchaseEntity entity)? cancelPurchase,
    TResult? Function(PurchaseEntity entity)? clearPurchase,
    TResult? Function(PurchaseEntity entity)? selectPurchase,
    TResult? Function(PurchaseEntity entity)? unselectPurchase,
    TResult? Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Purchase model)? addPurchase,
    TResult Function(PurchaseEntity entity)? deletePurchase,
    TResult Function(PurchaseEntity entity)? donePurchase,
    TResult Function(PurchaseEntity entity)? cancelPurchase,
    TResult Function(PurchaseEntity entity)? clearPurchase,
    TResult Function(PurchaseEntity entity)? selectPurchase,
    TResult Function(PurchaseEntity entity)? unselectPurchase,
    TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPurchase value) addPurchase,
    required TResult Function(DeletePurchase value) deletePurchase,
    required TResult Function(DonePurchase value) donePurchase,
    required TResult Function(CancelPurchase value) cancelPurchase,
    required TResult Function(ClearPurchase value) clearPurchase,
    required TResult Function(SelectPurchase value) selectPurchase,
    required TResult Function(UnselectPurchase value) unselectPurchase,
    required TResult Function(FetchPurchases value) fetchPurchases,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPurchase value)? addPurchase,
    TResult? Function(DeletePurchase value)? deletePurchase,
    TResult? Function(DonePurchase value)? donePurchase,
    TResult? Function(CancelPurchase value)? cancelPurchase,
    TResult? Function(ClearPurchase value)? clearPurchase,
    TResult? Function(SelectPurchase value)? selectPurchase,
    TResult? Function(UnselectPurchase value)? unselectPurchase,
    TResult? Function(FetchPurchases value)? fetchPurchases,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPurchase value)? addPurchase,
    TResult Function(DeletePurchase value)? deletePurchase,
    TResult Function(DonePurchase value)? donePurchase,
    TResult Function(CancelPurchase value)? cancelPurchase,
    TResult Function(ClearPurchase value)? clearPurchase,
    TResult Function(SelectPurchase value)? selectPurchase,
    TResult Function(UnselectPurchase value)? unselectPurchase,
    TResult Function(FetchPurchases value)? fetchPurchases,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingListEventsCopyWith<$Res> {
  factory $ShoppingListEventsCopyWith(ShoppingListEvents value, $Res Function(ShoppingListEvents) then) =
      _$ShoppingListEventsCopyWithImpl<$Res, ShoppingListEvents>;
}

/// @nodoc
class _$ShoppingListEventsCopyWithImpl<$Res, $Val extends ShoppingListEvents>
    implements $ShoppingListEventsCopyWith<$Res> {
  _$ShoppingListEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddPurchaseCopyWith<$Res> {
  factory _$$AddPurchaseCopyWith(_$AddPurchase value, $Res Function(_$AddPurchase) then) =
      __$$AddPurchaseCopyWithImpl<$Res>;
  @useResult
  $Res call({Purchase model});

  $PurchaseCopyWith<$Res> get model;
}

/// @nodoc
class __$$AddPurchaseCopyWithImpl<$Res> extends _$ShoppingListEventsCopyWithImpl<$Res, _$AddPurchase>
    implements _$$AddPurchaseCopyWith<$Res> {
  __$$AddPurchaseCopyWithImpl(_$AddPurchase _value, $Res Function(_$AddPurchase) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$AddPurchase(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Purchase,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PurchaseCopyWith<$Res> get model {
    return $PurchaseCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AddPurchase implements AddPurchase {
  const _$AddPurchase(this.model);

  @override
  final Purchase model;

  @override
  String toString() {
    return 'ShoppingListEvents.addPurchase(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPurchase &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPurchaseCopyWith<_$AddPurchase> get copyWith => __$$AddPurchaseCopyWithImpl<_$AddPurchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Purchase model) addPurchase,
    required TResult Function(PurchaseEntity entity) deletePurchase,
    required TResult Function(PurchaseEntity entity) donePurchase,
    required TResult Function(PurchaseEntity entity) cancelPurchase,
    required TResult Function(PurchaseEntity entity) clearPurchase,
    required TResult Function(PurchaseEntity entity) selectPurchase,
    required TResult Function(PurchaseEntity entity) unselectPurchase,
    required TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe) fetchPurchases,
  }) {
    return addPurchase(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Purchase model)? addPurchase,
    TResult? Function(PurchaseEntity entity)? deletePurchase,
    TResult? Function(PurchaseEntity entity)? donePurchase,
    TResult? Function(PurchaseEntity entity)? cancelPurchase,
    TResult? Function(PurchaseEntity entity)? clearPurchase,
    TResult? Function(PurchaseEntity entity)? selectPurchase,
    TResult? Function(PurchaseEntity entity)? unselectPurchase,
    TResult? Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
  }) {
    return addPurchase?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Purchase model)? addPurchase,
    TResult Function(PurchaseEntity entity)? deletePurchase,
    TResult Function(PurchaseEntity entity)? donePurchase,
    TResult Function(PurchaseEntity entity)? cancelPurchase,
    TResult Function(PurchaseEntity entity)? clearPurchase,
    TResult Function(PurchaseEntity entity)? selectPurchase,
    TResult Function(PurchaseEntity entity)? unselectPurchase,
    TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (addPurchase != null) {
      return addPurchase(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPurchase value) addPurchase,
    required TResult Function(DeletePurchase value) deletePurchase,
    required TResult Function(DonePurchase value) donePurchase,
    required TResult Function(CancelPurchase value) cancelPurchase,
    required TResult Function(ClearPurchase value) clearPurchase,
    required TResult Function(SelectPurchase value) selectPurchase,
    required TResult Function(UnselectPurchase value) unselectPurchase,
    required TResult Function(FetchPurchases value) fetchPurchases,
  }) {
    return addPurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPurchase value)? addPurchase,
    TResult? Function(DeletePurchase value)? deletePurchase,
    TResult? Function(DonePurchase value)? donePurchase,
    TResult? Function(CancelPurchase value)? cancelPurchase,
    TResult? Function(ClearPurchase value)? clearPurchase,
    TResult? Function(SelectPurchase value)? selectPurchase,
    TResult? Function(UnselectPurchase value)? unselectPurchase,
    TResult? Function(FetchPurchases value)? fetchPurchases,
  }) {
    return addPurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPurchase value)? addPurchase,
    TResult Function(DeletePurchase value)? deletePurchase,
    TResult Function(DonePurchase value)? donePurchase,
    TResult Function(CancelPurchase value)? cancelPurchase,
    TResult Function(ClearPurchase value)? clearPurchase,
    TResult Function(SelectPurchase value)? selectPurchase,
    TResult Function(UnselectPurchase value)? unselectPurchase,
    TResult Function(FetchPurchases value)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (addPurchase != null) {
      return addPurchase(this);
    }
    return orElse();
  }
}

abstract class AddPurchase implements ShoppingListEvents {
  const factory AddPurchase(final Purchase model) = _$AddPurchase;

  Purchase get model;
  @JsonKey(ignore: true)
  _$$AddPurchaseCopyWith<_$AddPurchase> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePurchaseCopyWith<$Res> {
  factory _$$DeletePurchaseCopyWith(_$DeletePurchase value, $Res Function(_$DeletePurchase) then) =
      __$$DeletePurchaseCopyWithImpl<$Res>;
  @useResult
  $Res call({PurchaseEntity entity});
}

/// @nodoc
class __$$DeletePurchaseCopyWithImpl<$Res> extends _$ShoppingListEventsCopyWithImpl<$Res, _$DeletePurchase>
    implements _$$DeletePurchaseCopyWith<$Res> {
  __$$DeletePurchaseCopyWithImpl(_$DeletePurchase _value, $Res Function(_$DeletePurchase) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$DeletePurchase(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as PurchaseEntity,
    ));
  }
}

/// @nodoc

class _$DeletePurchase implements DeletePurchase {
  const _$DeletePurchase(this.entity);

  @override
  final PurchaseEntity entity;

  @override
  String toString() {
    return 'ShoppingListEvents.deletePurchase(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePurchase &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePurchaseCopyWith<_$DeletePurchase> get copyWith =>
      __$$DeletePurchaseCopyWithImpl<_$DeletePurchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Purchase model) addPurchase,
    required TResult Function(PurchaseEntity entity) deletePurchase,
    required TResult Function(PurchaseEntity entity) donePurchase,
    required TResult Function(PurchaseEntity entity) cancelPurchase,
    required TResult Function(PurchaseEntity entity) clearPurchase,
    required TResult Function(PurchaseEntity entity) selectPurchase,
    required TResult Function(PurchaseEntity entity) unselectPurchase,
    required TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe) fetchPurchases,
  }) {
    return deletePurchase(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Purchase model)? addPurchase,
    TResult? Function(PurchaseEntity entity)? deletePurchase,
    TResult? Function(PurchaseEntity entity)? donePurchase,
    TResult? Function(PurchaseEntity entity)? cancelPurchase,
    TResult? Function(PurchaseEntity entity)? clearPurchase,
    TResult? Function(PurchaseEntity entity)? selectPurchase,
    TResult? Function(PurchaseEntity entity)? unselectPurchase,
    TResult? Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
  }) {
    return deletePurchase?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Purchase model)? addPurchase,
    TResult Function(PurchaseEntity entity)? deletePurchase,
    TResult Function(PurchaseEntity entity)? donePurchase,
    TResult Function(PurchaseEntity entity)? cancelPurchase,
    TResult Function(PurchaseEntity entity)? clearPurchase,
    TResult Function(PurchaseEntity entity)? selectPurchase,
    TResult Function(PurchaseEntity entity)? unselectPurchase,
    TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (deletePurchase != null) {
      return deletePurchase(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPurchase value) addPurchase,
    required TResult Function(DeletePurchase value) deletePurchase,
    required TResult Function(DonePurchase value) donePurchase,
    required TResult Function(CancelPurchase value) cancelPurchase,
    required TResult Function(ClearPurchase value) clearPurchase,
    required TResult Function(SelectPurchase value) selectPurchase,
    required TResult Function(UnselectPurchase value) unselectPurchase,
    required TResult Function(FetchPurchases value) fetchPurchases,
  }) {
    return deletePurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPurchase value)? addPurchase,
    TResult? Function(DeletePurchase value)? deletePurchase,
    TResult? Function(DonePurchase value)? donePurchase,
    TResult? Function(CancelPurchase value)? cancelPurchase,
    TResult? Function(ClearPurchase value)? clearPurchase,
    TResult? Function(SelectPurchase value)? selectPurchase,
    TResult? Function(UnselectPurchase value)? unselectPurchase,
    TResult? Function(FetchPurchases value)? fetchPurchases,
  }) {
    return deletePurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPurchase value)? addPurchase,
    TResult Function(DeletePurchase value)? deletePurchase,
    TResult Function(DonePurchase value)? donePurchase,
    TResult Function(CancelPurchase value)? cancelPurchase,
    TResult Function(ClearPurchase value)? clearPurchase,
    TResult Function(SelectPurchase value)? selectPurchase,
    TResult Function(UnselectPurchase value)? unselectPurchase,
    TResult Function(FetchPurchases value)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (deletePurchase != null) {
      return deletePurchase(this);
    }
    return orElse();
  }
}

abstract class DeletePurchase implements ShoppingListEvents {
  const factory DeletePurchase(final PurchaseEntity entity) = _$DeletePurchase;

  PurchaseEntity get entity;
  @JsonKey(ignore: true)
  _$$DeletePurchaseCopyWith<_$DeletePurchase> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DonePurchaseCopyWith<$Res> {
  factory _$$DonePurchaseCopyWith(_$DonePurchase value, $Res Function(_$DonePurchase) then) =
      __$$DonePurchaseCopyWithImpl<$Res>;
  @useResult
  $Res call({PurchaseEntity entity});
}

/// @nodoc
class __$$DonePurchaseCopyWithImpl<$Res> extends _$ShoppingListEventsCopyWithImpl<$Res, _$DonePurchase>
    implements _$$DonePurchaseCopyWith<$Res> {
  __$$DonePurchaseCopyWithImpl(_$DonePurchase _value, $Res Function(_$DonePurchase) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$DonePurchase(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as PurchaseEntity,
    ));
  }
}

/// @nodoc

class _$DonePurchase implements DonePurchase {
  const _$DonePurchase(this.entity);

  @override
  final PurchaseEntity entity;

  @override
  String toString() {
    return 'ShoppingListEvents.donePurchase(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonePurchase &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonePurchaseCopyWith<_$DonePurchase> get copyWith =>
      __$$DonePurchaseCopyWithImpl<_$DonePurchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Purchase model) addPurchase,
    required TResult Function(PurchaseEntity entity) deletePurchase,
    required TResult Function(PurchaseEntity entity) donePurchase,
    required TResult Function(PurchaseEntity entity) cancelPurchase,
    required TResult Function(PurchaseEntity entity) clearPurchase,
    required TResult Function(PurchaseEntity entity) selectPurchase,
    required TResult Function(PurchaseEntity entity) unselectPurchase,
    required TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe) fetchPurchases,
  }) {
    return donePurchase(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Purchase model)? addPurchase,
    TResult? Function(PurchaseEntity entity)? deletePurchase,
    TResult? Function(PurchaseEntity entity)? donePurchase,
    TResult? Function(PurchaseEntity entity)? cancelPurchase,
    TResult? Function(PurchaseEntity entity)? clearPurchase,
    TResult? Function(PurchaseEntity entity)? selectPurchase,
    TResult? Function(PurchaseEntity entity)? unselectPurchase,
    TResult? Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
  }) {
    return donePurchase?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Purchase model)? addPurchase,
    TResult Function(PurchaseEntity entity)? deletePurchase,
    TResult Function(PurchaseEntity entity)? donePurchase,
    TResult Function(PurchaseEntity entity)? cancelPurchase,
    TResult Function(PurchaseEntity entity)? clearPurchase,
    TResult Function(PurchaseEntity entity)? selectPurchase,
    TResult Function(PurchaseEntity entity)? unselectPurchase,
    TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (donePurchase != null) {
      return donePurchase(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPurchase value) addPurchase,
    required TResult Function(DeletePurchase value) deletePurchase,
    required TResult Function(DonePurchase value) donePurchase,
    required TResult Function(CancelPurchase value) cancelPurchase,
    required TResult Function(ClearPurchase value) clearPurchase,
    required TResult Function(SelectPurchase value) selectPurchase,
    required TResult Function(UnselectPurchase value) unselectPurchase,
    required TResult Function(FetchPurchases value) fetchPurchases,
  }) {
    return donePurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPurchase value)? addPurchase,
    TResult? Function(DeletePurchase value)? deletePurchase,
    TResult? Function(DonePurchase value)? donePurchase,
    TResult? Function(CancelPurchase value)? cancelPurchase,
    TResult? Function(ClearPurchase value)? clearPurchase,
    TResult? Function(SelectPurchase value)? selectPurchase,
    TResult? Function(UnselectPurchase value)? unselectPurchase,
    TResult? Function(FetchPurchases value)? fetchPurchases,
  }) {
    return donePurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPurchase value)? addPurchase,
    TResult Function(DeletePurchase value)? deletePurchase,
    TResult Function(DonePurchase value)? donePurchase,
    TResult Function(CancelPurchase value)? cancelPurchase,
    TResult Function(ClearPurchase value)? clearPurchase,
    TResult Function(SelectPurchase value)? selectPurchase,
    TResult Function(UnselectPurchase value)? unselectPurchase,
    TResult Function(FetchPurchases value)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (donePurchase != null) {
      return donePurchase(this);
    }
    return orElse();
  }
}

abstract class DonePurchase implements ShoppingListEvents {
  const factory DonePurchase(final PurchaseEntity entity) = _$DonePurchase;

  PurchaseEntity get entity;
  @JsonKey(ignore: true)
  _$$DonePurchaseCopyWith<_$DonePurchase> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelPurchaseCopyWith<$Res> {
  factory _$$CancelPurchaseCopyWith(_$CancelPurchase value, $Res Function(_$CancelPurchase) then) =
      __$$CancelPurchaseCopyWithImpl<$Res>;
  @useResult
  $Res call({PurchaseEntity entity});
}

/// @nodoc
class __$$CancelPurchaseCopyWithImpl<$Res> extends _$ShoppingListEventsCopyWithImpl<$Res, _$CancelPurchase>
    implements _$$CancelPurchaseCopyWith<$Res> {
  __$$CancelPurchaseCopyWithImpl(_$CancelPurchase _value, $Res Function(_$CancelPurchase) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$CancelPurchase(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as PurchaseEntity,
    ));
  }
}

/// @nodoc

class _$CancelPurchase implements CancelPurchase {
  const _$CancelPurchase(this.entity);

  @override
  final PurchaseEntity entity;

  @override
  String toString() {
    return 'ShoppingListEvents.cancelPurchase(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelPurchase &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelPurchaseCopyWith<_$CancelPurchase> get copyWith =>
      __$$CancelPurchaseCopyWithImpl<_$CancelPurchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Purchase model) addPurchase,
    required TResult Function(PurchaseEntity entity) deletePurchase,
    required TResult Function(PurchaseEntity entity) donePurchase,
    required TResult Function(PurchaseEntity entity) cancelPurchase,
    required TResult Function(PurchaseEntity entity) clearPurchase,
    required TResult Function(PurchaseEntity entity) selectPurchase,
    required TResult Function(PurchaseEntity entity) unselectPurchase,
    required TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe) fetchPurchases,
  }) {
    return cancelPurchase(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Purchase model)? addPurchase,
    TResult? Function(PurchaseEntity entity)? deletePurchase,
    TResult? Function(PurchaseEntity entity)? donePurchase,
    TResult? Function(PurchaseEntity entity)? cancelPurchase,
    TResult? Function(PurchaseEntity entity)? clearPurchase,
    TResult? Function(PurchaseEntity entity)? selectPurchase,
    TResult? Function(PurchaseEntity entity)? unselectPurchase,
    TResult? Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
  }) {
    return cancelPurchase?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Purchase model)? addPurchase,
    TResult Function(PurchaseEntity entity)? deletePurchase,
    TResult Function(PurchaseEntity entity)? donePurchase,
    TResult Function(PurchaseEntity entity)? cancelPurchase,
    TResult Function(PurchaseEntity entity)? clearPurchase,
    TResult Function(PurchaseEntity entity)? selectPurchase,
    TResult Function(PurchaseEntity entity)? unselectPurchase,
    TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (cancelPurchase != null) {
      return cancelPurchase(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPurchase value) addPurchase,
    required TResult Function(DeletePurchase value) deletePurchase,
    required TResult Function(DonePurchase value) donePurchase,
    required TResult Function(CancelPurchase value) cancelPurchase,
    required TResult Function(ClearPurchase value) clearPurchase,
    required TResult Function(SelectPurchase value) selectPurchase,
    required TResult Function(UnselectPurchase value) unselectPurchase,
    required TResult Function(FetchPurchases value) fetchPurchases,
  }) {
    return cancelPurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPurchase value)? addPurchase,
    TResult? Function(DeletePurchase value)? deletePurchase,
    TResult? Function(DonePurchase value)? donePurchase,
    TResult? Function(CancelPurchase value)? cancelPurchase,
    TResult? Function(ClearPurchase value)? clearPurchase,
    TResult? Function(SelectPurchase value)? selectPurchase,
    TResult? Function(UnselectPurchase value)? unselectPurchase,
    TResult? Function(FetchPurchases value)? fetchPurchases,
  }) {
    return cancelPurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPurchase value)? addPurchase,
    TResult Function(DeletePurchase value)? deletePurchase,
    TResult Function(DonePurchase value)? donePurchase,
    TResult Function(CancelPurchase value)? cancelPurchase,
    TResult Function(ClearPurchase value)? clearPurchase,
    TResult Function(SelectPurchase value)? selectPurchase,
    TResult Function(UnselectPurchase value)? unselectPurchase,
    TResult Function(FetchPurchases value)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (cancelPurchase != null) {
      return cancelPurchase(this);
    }
    return orElse();
  }
}

abstract class CancelPurchase implements ShoppingListEvents {
  const factory CancelPurchase(final PurchaseEntity entity) = _$CancelPurchase;

  PurchaseEntity get entity;
  @JsonKey(ignore: true)
  _$$CancelPurchaseCopyWith<_$CancelPurchase> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPurchaseCopyWith<$Res> {
  factory _$$ClearPurchaseCopyWith(_$ClearPurchase value, $Res Function(_$ClearPurchase) then) =
      __$$ClearPurchaseCopyWithImpl<$Res>;
  @useResult
  $Res call({PurchaseEntity entity});
}

/// @nodoc
class __$$ClearPurchaseCopyWithImpl<$Res> extends _$ShoppingListEventsCopyWithImpl<$Res, _$ClearPurchase>
    implements _$$ClearPurchaseCopyWith<$Res> {
  __$$ClearPurchaseCopyWithImpl(_$ClearPurchase _value, $Res Function(_$ClearPurchase) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$ClearPurchase(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as PurchaseEntity,
    ));
  }
}

/// @nodoc

class _$ClearPurchase implements ClearPurchase {
  const _$ClearPurchase(this.entity);

  @override
  final PurchaseEntity entity;

  @override
  String toString() {
    return 'ShoppingListEvents.clearPurchase(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPurchase &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearPurchaseCopyWith<_$ClearPurchase> get copyWith =>
      __$$ClearPurchaseCopyWithImpl<_$ClearPurchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Purchase model) addPurchase,
    required TResult Function(PurchaseEntity entity) deletePurchase,
    required TResult Function(PurchaseEntity entity) donePurchase,
    required TResult Function(PurchaseEntity entity) cancelPurchase,
    required TResult Function(PurchaseEntity entity) clearPurchase,
    required TResult Function(PurchaseEntity entity) selectPurchase,
    required TResult Function(PurchaseEntity entity) unselectPurchase,
    required TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe) fetchPurchases,
  }) {
    return clearPurchase(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Purchase model)? addPurchase,
    TResult? Function(PurchaseEntity entity)? deletePurchase,
    TResult? Function(PurchaseEntity entity)? donePurchase,
    TResult? Function(PurchaseEntity entity)? cancelPurchase,
    TResult? Function(PurchaseEntity entity)? clearPurchase,
    TResult? Function(PurchaseEntity entity)? selectPurchase,
    TResult? Function(PurchaseEntity entity)? unselectPurchase,
    TResult? Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
  }) {
    return clearPurchase?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Purchase model)? addPurchase,
    TResult Function(PurchaseEntity entity)? deletePurchase,
    TResult Function(PurchaseEntity entity)? donePurchase,
    TResult Function(PurchaseEntity entity)? cancelPurchase,
    TResult Function(PurchaseEntity entity)? clearPurchase,
    TResult Function(PurchaseEntity entity)? selectPurchase,
    TResult Function(PurchaseEntity entity)? unselectPurchase,
    TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (clearPurchase != null) {
      return clearPurchase(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPurchase value) addPurchase,
    required TResult Function(DeletePurchase value) deletePurchase,
    required TResult Function(DonePurchase value) donePurchase,
    required TResult Function(CancelPurchase value) cancelPurchase,
    required TResult Function(ClearPurchase value) clearPurchase,
    required TResult Function(SelectPurchase value) selectPurchase,
    required TResult Function(UnselectPurchase value) unselectPurchase,
    required TResult Function(FetchPurchases value) fetchPurchases,
  }) {
    return clearPurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPurchase value)? addPurchase,
    TResult? Function(DeletePurchase value)? deletePurchase,
    TResult? Function(DonePurchase value)? donePurchase,
    TResult? Function(CancelPurchase value)? cancelPurchase,
    TResult? Function(ClearPurchase value)? clearPurchase,
    TResult? Function(SelectPurchase value)? selectPurchase,
    TResult? Function(UnselectPurchase value)? unselectPurchase,
    TResult? Function(FetchPurchases value)? fetchPurchases,
  }) {
    return clearPurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPurchase value)? addPurchase,
    TResult Function(DeletePurchase value)? deletePurchase,
    TResult Function(DonePurchase value)? donePurchase,
    TResult Function(CancelPurchase value)? cancelPurchase,
    TResult Function(ClearPurchase value)? clearPurchase,
    TResult Function(SelectPurchase value)? selectPurchase,
    TResult Function(UnselectPurchase value)? unselectPurchase,
    TResult Function(FetchPurchases value)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (clearPurchase != null) {
      return clearPurchase(this);
    }
    return orElse();
  }
}

abstract class ClearPurchase implements ShoppingListEvents {
  const factory ClearPurchase(final PurchaseEntity entity) = _$ClearPurchase;

  PurchaseEntity get entity;
  @JsonKey(ignore: true)
  _$$ClearPurchaseCopyWith<_$ClearPurchase> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPurchaseCopyWith<$Res> {
  factory _$$SelectPurchaseCopyWith(_$SelectPurchase value, $Res Function(_$SelectPurchase) then) =
      __$$SelectPurchaseCopyWithImpl<$Res>;
  @useResult
  $Res call({PurchaseEntity entity});
}

/// @nodoc
class __$$SelectPurchaseCopyWithImpl<$Res> extends _$ShoppingListEventsCopyWithImpl<$Res, _$SelectPurchase>
    implements _$$SelectPurchaseCopyWith<$Res> {
  __$$SelectPurchaseCopyWithImpl(_$SelectPurchase _value, $Res Function(_$SelectPurchase) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$SelectPurchase(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as PurchaseEntity,
    ));
  }
}

/// @nodoc

class _$SelectPurchase implements SelectPurchase {
  const _$SelectPurchase(this.entity);

  @override
  final PurchaseEntity entity;

  @override
  String toString() {
    return 'ShoppingListEvents.selectPurchase(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPurchase &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPurchaseCopyWith<_$SelectPurchase> get copyWith =>
      __$$SelectPurchaseCopyWithImpl<_$SelectPurchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Purchase model) addPurchase,
    required TResult Function(PurchaseEntity entity) deletePurchase,
    required TResult Function(PurchaseEntity entity) donePurchase,
    required TResult Function(PurchaseEntity entity) cancelPurchase,
    required TResult Function(PurchaseEntity entity) clearPurchase,
    required TResult Function(PurchaseEntity entity) selectPurchase,
    required TResult Function(PurchaseEntity entity) unselectPurchase,
    required TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe) fetchPurchases,
  }) {
    return selectPurchase(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Purchase model)? addPurchase,
    TResult? Function(PurchaseEntity entity)? deletePurchase,
    TResult? Function(PurchaseEntity entity)? donePurchase,
    TResult? Function(PurchaseEntity entity)? cancelPurchase,
    TResult? Function(PurchaseEntity entity)? clearPurchase,
    TResult? Function(PurchaseEntity entity)? selectPurchase,
    TResult? Function(PurchaseEntity entity)? unselectPurchase,
    TResult? Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
  }) {
    return selectPurchase?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Purchase model)? addPurchase,
    TResult Function(PurchaseEntity entity)? deletePurchase,
    TResult Function(PurchaseEntity entity)? donePurchase,
    TResult Function(PurchaseEntity entity)? cancelPurchase,
    TResult Function(PurchaseEntity entity)? clearPurchase,
    TResult Function(PurchaseEntity entity)? selectPurchase,
    TResult Function(PurchaseEntity entity)? unselectPurchase,
    TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (selectPurchase != null) {
      return selectPurchase(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPurchase value) addPurchase,
    required TResult Function(DeletePurchase value) deletePurchase,
    required TResult Function(DonePurchase value) donePurchase,
    required TResult Function(CancelPurchase value) cancelPurchase,
    required TResult Function(ClearPurchase value) clearPurchase,
    required TResult Function(SelectPurchase value) selectPurchase,
    required TResult Function(UnselectPurchase value) unselectPurchase,
    required TResult Function(FetchPurchases value) fetchPurchases,
  }) {
    return selectPurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPurchase value)? addPurchase,
    TResult? Function(DeletePurchase value)? deletePurchase,
    TResult? Function(DonePurchase value)? donePurchase,
    TResult? Function(CancelPurchase value)? cancelPurchase,
    TResult? Function(ClearPurchase value)? clearPurchase,
    TResult? Function(SelectPurchase value)? selectPurchase,
    TResult? Function(UnselectPurchase value)? unselectPurchase,
    TResult? Function(FetchPurchases value)? fetchPurchases,
  }) {
    return selectPurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPurchase value)? addPurchase,
    TResult Function(DeletePurchase value)? deletePurchase,
    TResult Function(DonePurchase value)? donePurchase,
    TResult Function(CancelPurchase value)? cancelPurchase,
    TResult Function(ClearPurchase value)? clearPurchase,
    TResult Function(SelectPurchase value)? selectPurchase,
    TResult Function(UnselectPurchase value)? unselectPurchase,
    TResult Function(FetchPurchases value)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (selectPurchase != null) {
      return selectPurchase(this);
    }
    return orElse();
  }
}

abstract class SelectPurchase implements ShoppingListEvents {
  const factory SelectPurchase(final PurchaseEntity entity) = _$SelectPurchase;

  PurchaseEntity get entity;
  @JsonKey(ignore: true)
  _$$SelectPurchaseCopyWith<_$SelectPurchase> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnselectPurchaseCopyWith<$Res> {
  factory _$$UnselectPurchaseCopyWith(_$UnselectPurchase value, $Res Function(_$UnselectPurchase) then) =
      __$$UnselectPurchaseCopyWithImpl<$Res>;
  @useResult
  $Res call({PurchaseEntity entity});
}

/// @nodoc
class __$$UnselectPurchaseCopyWithImpl<$Res> extends _$ShoppingListEventsCopyWithImpl<$Res, _$UnselectPurchase>
    implements _$$UnselectPurchaseCopyWith<$Res> {
  __$$UnselectPurchaseCopyWithImpl(_$UnselectPurchase _value, $Res Function(_$UnselectPurchase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$UnselectPurchase(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as PurchaseEntity,
    ));
  }
}

/// @nodoc

class _$UnselectPurchase implements UnselectPurchase {
  const _$UnselectPurchase(this.entity);

  @override
  final PurchaseEntity entity;

  @override
  String toString() {
    return 'ShoppingListEvents.unselectPurchase(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnselectPurchase &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnselectPurchaseCopyWith<_$UnselectPurchase> get copyWith =>
      __$$UnselectPurchaseCopyWithImpl<_$UnselectPurchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Purchase model) addPurchase,
    required TResult Function(PurchaseEntity entity) deletePurchase,
    required TResult Function(PurchaseEntity entity) donePurchase,
    required TResult Function(PurchaseEntity entity) cancelPurchase,
    required TResult Function(PurchaseEntity entity) clearPurchase,
    required TResult Function(PurchaseEntity entity) selectPurchase,
    required TResult Function(PurchaseEntity entity) unselectPurchase,
    required TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe) fetchPurchases,
  }) {
    return unselectPurchase(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Purchase model)? addPurchase,
    TResult? Function(PurchaseEntity entity)? deletePurchase,
    TResult? Function(PurchaseEntity entity)? donePurchase,
    TResult? Function(PurchaseEntity entity)? cancelPurchase,
    TResult? Function(PurchaseEntity entity)? clearPurchase,
    TResult? Function(PurchaseEntity entity)? selectPurchase,
    TResult? Function(PurchaseEntity entity)? unselectPurchase,
    TResult? Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
  }) {
    return unselectPurchase?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Purchase model)? addPurchase,
    TResult Function(PurchaseEntity entity)? deletePurchase,
    TResult Function(PurchaseEntity entity)? donePurchase,
    TResult Function(PurchaseEntity entity)? cancelPurchase,
    TResult Function(PurchaseEntity entity)? clearPurchase,
    TResult Function(PurchaseEntity entity)? selectPurchase,
    TResult Function(PurchaseEntity entity)? unselectPurchase,
    TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (unselectPurchase != null) {
      return unselectPurchase(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPurchase value) addPurchase,
    required TResult Function(DeletePurchase value) deletePurchase,
    required TResult Function(DonePurchase value) donePurchase,
    required TResult Function(CancelPurchase value) cancelPurchase,
    required TResult Function(ClearPurchase value) clearPurchase,
    required TResult Function(SelectPurchase value) selectPurchase,
    required TResult Function(UnselectPurchase value) unselectPurchase,
    required TResult Function(FetchPurchases value) fetchPurchases,
  }) {
    return unselectPurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPurchase value)? addPurchase,
    TResult? Function(DeletePurchase value)? deletePurchase,
    TResult? Function(DonePurchase value)? donePurchase,
    TResult? Function(CancelPurchase value)? cancelPurchase,
    TResult? Function(ClearPurchase value)? clearPurchase,
    TResult? Function(SelectPurchase value)? selectPurchase,
    TResult? Function(UnselectPurchase value)? unselectPurchase,
    TResult? Function(FetchPurchases value)? fetchPurchases,
  }) {
    return unselectPurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPurchase value)? addPurchase,
    TResult Function(DeletePurchase value)? deletePurchase,
    TResult Function(DonePurchase value)? donePurchase,
    TResult Function(CancelPurchase value)? cancelPurchase,
    TResult Function(ClearPurchase value)? clearPurchase,
    TResult Function(SelectPurchase value)? selectPurchase,
    TResult Function(UnselectPurchase value)? unselectPurchase,
    TResult Function(FetchPurchases value)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (unselectPurchase != null) {
      return unselectPurchase(this);
    }
    return orElse();
  }
}

abstract class UnselectPurchase implements ShoppingListEvents {
  const factory UnselectPurchase(final PurchaseEntity entity) = _$UnselectPurchase;

  PurchaseEntity get entity;
  @JsonKey(ignore: true)
  _$$UnselectPurchaseCopyWith<_$UnselectPurchase> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPurchasesCopyWith<$Res> {
  factory _$$FetchPurchasesCopyWith(_$FetchPurchases value, $Res Function(_$FetchPurchases) then) =
      __$$FetchPurchasesCopyWithImpl<$Res>;
  @useResult
  $Res call({void Function(Stream<List<PurchaseEntity>>) subscribe});
}

/// @nodoc
class __$$FetchPurchasesCopyWithImpl<$Res> extends _$ShoppingListEventsCopyWithImpl<$Res, _$FetchPurchases>
    implements _$$FetchPurchasesCopyWith<$Res> {
  __$$FetchPurchasesCopyWithImpl(_$FetchPurchases _value, $Res Function(_$FetchPurchases) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribe = null,
  }) {
    return _then(_$FetchPurchases(
      null == subscribe
          ? _value.subscribe
          : subscribe // ignore: cast_nullable_to_non_nullable
              as void Function(Stream<List<PurchaseEntity>>),
    ));
  }
}

/// @nodoc

class _$FetchPurchases implements FetchPurchases {
  const _$FetchPurchases(this.subscribe);

  @override
  final void Function(Stream<List<PurchaseEntity>>) subscribe;

  @override
  String toString() {
    return 'ShoppingListEvents.fetchPurchases(subscribe: $subscribe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPurchases &&
            (identical(other.subscribe, subscribe) || other.subscribe == subscribe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscribe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPurchasesCopyWith<_$FetchPurchases> get copyWith =>
      __$$FetchPurchasesCopyWithImpl<_$FetchPurchases>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Purchase model) addPurchase,
    required TResult Function(PurchaseEntity entity) deletePurchase,
    required TResult Function(PurchaseEntity entity) donePurchase,
    required TResult Function(PurchaseEntity entity) cancelPurchase,
    required TResult Function(PurchaseEntity entity) clearPurchase,
    required TResult Function(PurchaseEntity entity) selectPurchase,
    required TResult Function(PurchaseEntity entity) unselectPurchase,
    required TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe) fetchPurchases,
  }) {
    return fetchPurchases(subscribe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Purchase model)? addPurchase,
    TResult? Function(PurchaseEntity entity)? deletePurchase,
    TResult? Function(PurchaseEntity entity)? donePurchase,
    TResult? Function(PurchaseEntity entity)? cancelPurchase,
    TResult? Function(PurchaseEntity entity)? clearPurchase,
    TResult? Function(PurchaseEntity entity)? selectPurchase,
    TResult? Function(PurchaseEntity entity)? unselectPurchase,
    TResult? Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
  }) {
    return fetchPurchases?.call(subscribe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Purchase model)? addPurchase,
    TResult Function(PurchaseEntity entity)? deletePurchase,
    TResult Function(PurchaseEntity entity)? donePurchase,
    TResult Function(PurchaseEntity entity)? cancelPurchase,
    TResult Function(PurchaseEntity entity)? clearPurchase,
    TResult Function(PurchaseEntity entity)? selectPurchase,
    TResult Function(PurchaseEntity entity)? unselectPurchase,
    TResult Function(void Function(Stream<List<PurchaseEntity>>) subscribe)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (fetchPurchases != null) {
      return fetchPurchases(subscribe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPurchase value) addPurchase,
    required TResult Function(DeletePurchase value) deletePurchase,
    required TResult Function(DonePurchase value) donePurchase,
    required TResult Function(CancelPurchase value) cancelPurchase,
    required TResult Function(ClearPurchase value) clearPurchase,
    required TResult Function(SelectPurchase value) selectPurchase,
    required TResult Function(UnselectPurchase value) unselectPurchase,
    required TResult Function(FetchPurchases value) fetchPurchases,
  }) {
    return fetchPurchases(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPurchase value)? addPurchase,
    TResult? Function(DeletePurchase value)? deletePurchase,
    TResult? Function(DonePurchase value)? donePurchase,
    TResult? Function(CancelPurchase value)? cancelPurchase,
    TResult? Function(ClearPurchase value)? clearPurchase,
    TResult? Function(SelectPurchase value)? selectPurchase,
    TResult? Function(UnselectPurchase value)? unselectPurchase,
    TResult? Function(FetchPurchases value)? fetchPurchases,
  }) {
    return fetchPurchases?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPurchase value)? addPurchase,
    TResult Function(DeletePurchase value)? deletePurchase,
    TResult Function(DonePurchase value)? donePurchase,
    TResult Function(CancelPurchase value)? cancelPurchase,
    TResult Function(ClearPurchase value)? clearPurchase,
    TResult Function(SelectPurchase value)? selectPurchase,
    TResult Function(UnselectPurchase value)? unselectPurchase,
    TResult Function(FetchPurchases value)? fetchPurchases,
    required TResult orElse(),
  }) {
    if (fetchPurchases != null) {
      return fetchPurchases(this);
    }
    return orElse();
  }
}

abstract class FetchPurchases implements ShoppingListEvents {
  const factory FetchPurchases(final void Function(Stream<List<PurchaseEntity>>) subscribe) = _$FetchPurchases;

  void Function(Stream<List<PurchaseEntity>>) get subscribe;
  @JsonKey(ignore: true)
  _$$FetchPurchasesCopyWith<_$FetchPurchases> get copyWith => throw _privateConstructorUsedError;
}
