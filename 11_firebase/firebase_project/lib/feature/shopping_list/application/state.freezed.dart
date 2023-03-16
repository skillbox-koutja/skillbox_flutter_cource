// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingListState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<Failure, PurchaseEntity>> get submitStatus => throw _privateConstructorUsedError;
  Option<Either<Failure, ImageProvider<Object>>> get backgroundImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingListStateCopyWith<ShoppingListState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingListStateCopyWith<$Res> {
  factory $ShoppingListStateCopyWith(ShoppingListState value, $Res Function(ShoppingListState) then) =
      _$ShoppingListStateCopyWithImpl<$Res, ShoppingListState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      Option<Either<Failure, PurchaseEntity>> submitStatus,
      Option<Either<Failure, ImageProvider<Object>>> backgroundImage});
}

/// @nodoc
class _$ShoppingListStateCopyWithImpl<$Res, $Val extends ShoppingListState>
    implements $ShoppingListStateCopyWith<$Res> {
  _$ShoppingListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? submitStatus = null,
    Object? backgroundImage = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitStatus: null == submitStatus
          ? _value.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, PurchaseEntity>>,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, ImageProvider<Object>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShoppingListStateCopyWith<$Res> implements $ShoppingListStateCopyWith<$Res> {
  factory _$$_ShoppingListStateCopyWith(_$_ShoppingListState value, $Res Function(_$_ShoppingListState) then) =
      __$$_ShoppingListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      Option<Either<Failure, PurchaseEntity>> submitStatus,
      Option<Either<Failure, ImageProvider<Object>>> backgroundImage});
}

/// @nodoc
class __$$_ShoppingListStateCopyWithImpl<$Res> extends _$ShoppingListStateCopyWithImpl<$Res, _$_ShoppingListState>
    implements _$$_ShoppingListStateCopyWith<$Res> {
  __$$_ShoppingListStateCopyWithImpl(_$_ShoppingListState _value, $Res Function(_$_ShoppingListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? submitStatus = null,
    Object? backgroundImage = null,
  }) {
    return _then(_$_ShoppingListState(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitStatus: null == submitStatus
          ? _value.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, PurchaseEntity>>,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, ImageProvider<Object>>>,
    ));
  }
}

/// @nodoc

class _$_ShoppingListState extends _ShoppingListState {
  const _$_ShoppingListState({required this.isSubmitting, required this.submitStatus, required this.backgroundImage})
      : super._();

  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, PurchaseEntity>> submitStatus;
  @override
  final Option<Either<Failure, ImageProvider<Object>>> backgroundImage;

  @override
  String toString() {
    return 'ShoppingListState(isSubmitting: $isSubmitting, submitStatus: $submitStatus, backgroundImage: $backgroundImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingListState &&
            (identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting) &&
            (identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus) &&
            (identical(other.backgroundImage, backgroundImage) || other.backgroundImage == backgroundImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting, submitStatus, backgroundImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingListStateCopyWith<_$_ShoppingListState> get copyWith =>
      __$$_ShoppingListStateCopyWithImpl<_$_ShoppingListState>(this, _$identity);
}

abstract class _ShoppingListState extends ShoppingListState {
  const factory _ShoppingListState(
      {required final bool isSubmitting,
      required final Option<Either<Failure, PurchaseEntity>> submitStatus,
      required final Option<Either<Failure, ImageProvider<Object>>> backgroundImage}) = _$_ShoppingListState;
  const _ShoppingListState._() : super._();

  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, PurchaseEntity>> get submitStatus;
  @override
  Option<Either<Failure, ImageProvider<Object>>> get backgroundImage;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingListStateCopyWith<_$_ShoppingListState> get copyWith => throw _privateConstructorUsedError;
}
