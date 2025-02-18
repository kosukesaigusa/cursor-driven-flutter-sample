// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Foo _$FooFromJson(Map<String, dynamic> json) {
  return _Foo.fromJson(json);
}

/// @nodoc
mixin _$Foo {
  String get someField => throw _privateConstructorUsedError;
  List<String> get things => throw _privateConstructorUsedError;

  /// Serializes this Foo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Foo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FooCopyWith<Foo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooCopyWith<$Res> {
  factory $FooCopyWith(Foo value, $Res Function(Foo) then) =
      _$FooCopyWithImpl<$Res, Foo>;
  @useResult
  $Res call({String someField, List<String> things});
}

/// @nodoc
class _$FooCopyWithImpl<$Res, $Val extends Foo> implements $FooCopyWith<$Res> {
  _$FooCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Foo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? someField = null,
    Object? things = null,
  }) {
    return _then(_value.copyWith(
      someField: null == someField
          ? _value.someField
          : someField // ignore: cast_nullable_to_non_nullable
              as String,
      things: null == things
          ? _value.things
          : things // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FooImplCopyWith<$Res> implements $FooCopyWith<$Res> {
  factory _$$FooImplCopyWith(_$FooImpl value, $Res Function(_$FooImpl) then) =
      __$$FooImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String someField, List<String> things});
}

/// @nodoc
class __$$FooImplCopyWithImpl<$Res> extends _$FooCopyWithImpl<$Res, _$FooImpl>
    implements _$$FooImplCopyWith<$Res> {
  __$$FooImplCopyWithImpl(_$FooImpl _value, $Res Function(_$FooImpl) _then)
      : super(_value, _then);

  /// Create a copy of Foo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? someField = null,
    Object? things = null,
  }) {
    return _then(_$FooImpl(
      someField: null == someField
          ? _value.someField
          : someField // ignore: cast_nullable_to_non_nullable
              as String,
      things: null == things
          ? _value._things
          : things // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FooImpl implements _Foo {
  const _$FooImpl(
      {required this.someField, final List<String> things = const []})
      : _things = things;

  factory _$FooImpl.fromJson(Map<String, dynamic> json) =>
      _$$FooImplFromJson(json);

  @override
  final String someField;
  final List<String> _things;
  @override
  @JsonKey()
  List<String> get things {
    if (_things is EqualUnmodifiableListView) return _things;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_things);
  }

  @override
  String toString() {
    return 'Foo(someField: $someField, things: $things)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FooImpl &&
            (identical(other.someField, someField) ||
                other.someField == someField) &&
            const DeepCollectionEquality().equals(other._things, _things));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, someField, const DeepCollectionEquality().hash(_things));

  /// Create a copy of Foo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FooImplCopyWith<_$FooImpl> get copyWith =>
      __$$FooImplCopyWithImpl<_$FooImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FooImplToJson(
      this,
    );
  }
}

abstract class _Foo implements Foo {
  const factory _Foo(
      {required final String someField, final List<String> things}) = _$FooImpl;

  factory _Foo.fromJson(Map<String, dynamic> json) = _$FooImpl.fromJson;

  @override
  String get someField;
  @override
  List<String> get things;

  /// Create a copy of Foo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FooImplCopyWith<_$FooImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
