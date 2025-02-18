import 'package:cursor_driven_flutter_sample/entity/qiita_item.dart';
import 'package:cursor_driven_flutter_sample/repository/qiita_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'qiita_items.g.dart';

/// Qiita の記事一覧を管理する。
@riverpod
class QiitaItemsNotifier extends _$QiitaItemsNotifier {
  @override
  Future<List<QiitaItem>> build() async =>
      ref.read(qiitaRepositoryProvider).fetchItems();

  /// 指定したページの記事一覧を取得する。
  Future<void> fetchPage(int page) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => ref.read(qiitaRepositoryProvider).fetchItems(page: page),
    );
  }
}
