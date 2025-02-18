import 'package:cursor_driven_flutter_sample/logic/qiita_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Qiita の記事一覧を表示するページ。
class QiitaItemsPage extends ConsumerWidget {
  /// Qiita の記事一覧を表示するページを作成する。
  const QiitaItemsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(qiitaItemsNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Qiita 記事一覧'),
      ),
      body: items.when(
        data: (items) => ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.author.profileImageUrl),
              ),
              title: Text(item.title),
              subtitle: Text(item.author.name),
              trailing: Text('♥ ${item.likesCount}'),
              onTap: () {},
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('エラーが発生しました: $error'),
        ),
      ),
    );
  }
}
