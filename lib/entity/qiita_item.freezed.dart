// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qiita_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QiitaItem _$QiitaItemFromJson(Map<String, dynamic> json) {
  return _QiitaItem.fromJson(json);
}

/// @nodoc
mixin _$QiitaItem {
  /// 記事の ID。
  String get id => throw _privateConstructorUsedError;

  /// 記事のタイトル。
  String get title => throw _privateConstructorUsedError;

  /// 記事の URL。
  String get url => throw _privateConstructorUsedError;

  /// 記事の作成者のユーザ名。
  @JsonKey(name: 'user')
  QiitaUser get author => throw _privateConstructorUsedError;

  /// 記事の作成日時。
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// いいねの数。
  @JsonKey(name: 'likes_count')
  int get likesCount => throw _privateConstructorUsedError;

  /// Serializes this QiitaItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QiitaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QiitaItemCopyWith<QiitaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaItemCopyWith<$Res> {
  factory $QiitaItemCopyWith(QiitaItem value, $Res Function(QiitaItem) then) =
      _$QiitaItemCopyWithImpl<$Res, QiitaItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      String url,
      @JsonKey(name: 'user') QiitaUser author,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'likes_count') int likesCount});

  $QiitaUserCopyWith<$Res> get author;
}

/// @nodoc
class _$QiitaItemCopyWithImpl<$Res, $Val extends QiitaItem>
    implements $QiitaItemCopyWith<$Res> {
  _$QiitaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QiitaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? author = null,
    Object? createdAt = null,
    Object? likesCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as QiitaUser,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of QiitaItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QiitaUserCopyWith<$Res> get author {
    return $QiitaUserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QiitaItemImplCopyWith<$Res>
    implements $QiitaItemCopyWith<$Res> {
  factory _$$QiitaItemImplCopyWith(
          _$QiitaItemImpl value, $Res Function(_$QiitaItemImpl) then) =
      __$$QiitaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String url,
      @JsonKey(name: 'user') QiitaUser author,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'likes_count') int likesCount});

  @override
  $QiitaUserCopyWith<$Res> get author;
}

/// @nodoc
class __$$QiitaItemImplCopyWithImpl<$Res>
    extends _$QiitaItemCopyWithImpl<$Res, _$QiitaItemImpl>
    implements _$$QiitaItemImplCopyWith<$Res> {
  __$$QiitaItemImplCopyWithImpl(
      _$QiitaItemImpl _value, $Res Function(_$QiitaItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of QiitaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? author = null,
    Object? createdAt = null,
    Object? likesCount = null,
  }) {
    return _then(_$QiitaItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as QiitaUser,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QiitaItemImpl implements _QiitaItem {
  const _$QiitaItemImpl(
      {required this.id,
      required this.title,
      required this.url,
      @JsonKey(name: 'user') required this.author,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'likes_count') required this.likesCount});

  factory _$QiitaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$QiitaItemImplFromJson(json);

  /// 記事の ID。
  @override
  final String id;

  /// 記事のタイトル。
  @override
  final String title;

  /// 記事の URL。
  @override
  final String url;

  /// 記事の作成者のユーザ名。
  @override
  @JsonKey(name: 'user')
  final QiitaUser author;

  /// 記事の作成日時。
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// いいねの数。
  @override
  @JsonKey(name: 'likes_count')
  final int likesCount;

  @override
  String toString() {
    return 'QiitaItem(id: $id, title: $title, url: $url, author: $author, createdAt: $createdAt, likesCount: $likesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QiitaItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, url, author, createdAt, likesCount);

  /// Create a copy of QiitaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QiitaItemImplCopyWith<_$QiitaItemImpl> get copyWith =>
      __$$QiitaItemImplCopyWithImpl<_$QiitaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QiitaItemImplToJson(
      this,
    );
  }
}

abstract class _QiitaItem implements QiitaItem {
  const factory _QiitaItem(
          {required final String id,
          required final String title,
          required final String url,
          @JsonKey(name: 'user') required final QiitaUser author,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'likes_count') required final int likesCount}) =
      _$QiitaItemImpl;

  factory _QiitaItem.fromJson(Map<String, dynamic> json) =
      _$QiitaItemImpl.fromJson;

  /// 記事の ID。
  @override
  String get id;

  /// 記事のタイトル。
  @override
  String get title;

  /// 記事の URL。
  @override
  String get url;

  /// 記事の作成者のユーザ名。
  @override
  @JsonKey(name: 'user')
  QiitaUser get author;

  /// 記事の作成日時。
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// いいねの数。
  @override
  @JsonKey(name: 'likes_count')
  int get likesCount;

  /// Create a copy of QiitaItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QiitaItemImplCopyWith<_$QiitaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QiitaUser _$QiitaUserFromJson(Map<String, dynamic> json) {
  return _QiitaUser.fromJson(json);
}

/// @nodoc
mixin _$QiitaUser {
  /// ユーザ ID。
  String get id => throw _privateConstructorUsedError;

  /// ユーザ名。
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// プロフィール画像の URL。
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl => throw _privateConstructorUsedError;

  /// Serializes this QiitaUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QiitaUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QiitaUserCopyWith<QiitaUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaUserCopyWith<$Res> {
  factory $QiitaUserCopyWith(QiitaUser value, $Res Function(QiitaUser) then) =
      _$QiitaUserCopyWithImpl<$Res, QiitaUser>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'profile_image_url') String profileImageUrl});
}

/// @nodoc
class _$QiitaUserCopyWithImpl<$Res, $Val extends QiitaUser>
    implements $QiitaUserCopyWith<$Res> {
  _$QiitaUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QiitaUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profileImageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QiitaUserImplCopyWith<$Res>
    implements $QiitaUserCopyWith<$Res> {
  factory _$$QiitaUserImplCopyWith(
          _$QiitaUserImpl value, $Res Function(_$QiitaUserImpl) then) =
      __$$QiitaUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'profile_image_url') String profileImageUrl});
}

/// @nodoc
class __$$QiitaUserImplCopyWithImpl<$Res>
    extends _$QiitaUserCopyWithImpl<$Res, _$QiitaUserImpl>
    implements _$$QiitaUserImplCopyWith<$Res> {
  __$$QiitaUserImplCopyWithImpl(
      _$QiitaUserImpl _value, $Res Function(_$QiitaUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of QiitaUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profileImageUrl = null,
  }) {
    return _then(_$QiitaUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QiitaUserImpl implements _QiitaUser {
  const _$QiitaUserImpl(
      {required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'profile_image_url') required this.profileImageUrl});

  factory _$QiitaUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$QiitaUserImplFromJson(json);

  /// ユーザ ID。
  @override
  final String id;

  /// ユーザ名。
  @override
  @JsonKey(name: 'name')
  final String name;

  /// プロフィール画像の URL。
  @override
  @JsonKey(name: 'profile_image_url')
  final String profileImageUrl;

  @override
  String toString() {
    return 'QiitaUser(id: $id, name: $name, profileImageUrl: $profileImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QiitaUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, profileImageUrl);

  /// Create a copy of QiitaUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QiitaUserImplCopyWith<_$QiitaUserImpl> get copyWith =>
      __$$QiitaUserImplCopyWithImpl<_$QiitaUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QiitaUserImplToJson(
      this,
    );
  }
}

abstract class _QiitaUser implements QiitaUser {
  const factory _QiitaUser(
      {required final String id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'profile_image_url')
      required final String profileImageUrl}) = _$QiitaUserImpl;

  factory _QiitaUser.fromJson(Map<String, dynamic> json) =
      _$QiitaUserImpl.fromJson;

  /// ユーザ ID。
  @override
  String get id;

  /// ユーザ名。
  @override
  @JsonKey(name: 'name')
  String get name;

  /// プロフィール画像の URL。
  @override
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl;

  /// Create a copy of QiitaUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QiitaUserImplCopyWith<_$QiitaUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
