import 'dart:convert';

import 'package:cursor_driven_flutter_sample/entity/foo.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foo_repository.g.dart';

/// [FooRepository] クラスのインスタンスを提供する。
@riverpod
FooRepository fooRepository(Ref ref) => FooRepository();

/// [Foo] の通信を行うためのリポジトリ。
class FooRepository {
  /// [Foo] の通信を行うためのリポジトリを生成する。
  const FooRepository();

  /// [Foo] 一覧を取得する。
  Future<List<Foo>> fetchFoos() async {
    final url = Uri.https('example.com', '/foo');
    final response = await http.get(url);
    if (response.statusCode != 200) {
      throw Exception();
    }
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['foos'].map(Foo.fromJson).toList();
  }

  /// 指定した [Foo] を取得する。
  Future<Foo> fetchFoo(String id) async {
    final url = Uri.https('example.com', '/foo/$id');
    final response = await http.get(url);
    if (response.statusCode != 200) {
      throw Exception();
    }
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return Foo.fromJson(json);
  }

  /// [Foo] を作成する。
  Future<Foo> createFoo(String someField) async {
    final url = Uri.https('example.com', '/foo');
    final response =
        await http.post(url, body: jsonEncode({'someField': someField}));
    if (response.statusCode != 200) {
      throw Exception();
    }
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return Foo.fromJson(json);
  }
}
