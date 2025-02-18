import 'dart:convert';

import 'package:cursor_driven_flutter_sample/entity/qiita_item.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'qiita_repository.g.dart';

/// [QiitaRepository] クラスのインスタンスを提供する。
@riverpod
QiitaRepository qiitaRepository(QiitaRepositoryRef ref) => QiitaRepository();

/// Qiita API との通信を行うリポジトリ。
class QiitaRepository {
  /// Qiita API との通信を行うリポジトリを生成する。
  const QiitaRepository();

  /// Qiita の記事一覧を取得する。
  Future<List<QiitaItem>> fetchItems({
    int page = 1,
    int perPage = 20,
  }) async {
    final url = Uri.https(
      'qiita.com',
      '/api/v2/items',
      {
        'page': page.toString(),
        'per_page': perPage.toString(),
      },
    );
    final response = await http.get(url);
    if (response.statusCode != 200) {
      throw Exception('記事一覧の取得に失敗しました。');
    }
    final json = jsonDecode(response.body) as List<dynamic>;
    return json
        .map((item) => QiitaItem.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
