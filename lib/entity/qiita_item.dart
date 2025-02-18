import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_item.freezed.dart';
part 'qiita_item.g.dart';

/// Qiita の記事を表すエンティティ。
@freezed
class QiitaItem with _$QiitaItem {
  const factory QiitaItem({
    /// 記事の ID。
    required String id,

    /// 記事のタイトル。
    required String title,

    /// 記事の URL。
    required String url,

    /// 記事の作成者のユーザ名。
    @JsonKey(name: 'user') required QiitaUser author,

    /// 記事の作成日時。
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// いいねの数。
    @JsonKey(name: 'likes_count') required int likesCount,
  }) = _QiitaItem;

  factory QiitaItem.fromJson(Map<String, dynamic> json) =>
      _$QiitaItemFromJson(json);
}

/// Qiita のユーザを表すエンティティ。
@freezed
class QiitaUser with _$QiitaUser {
  const factory QiitaUser({
    /// ユーザ ID。
    required String id,

    /// ユーザ名。
    @JsonKey(name: 'name') required String name,

    /// プロフィール画像の URL。
    @JsonKey(name: 'profile_image_url') required String profileImageUrl,
  }) = _QiitaUser;

  factory QiitaUser.fromJson(Map<String, dynamic> json) =>
      _$QiitaUserFromJson(json);
}
