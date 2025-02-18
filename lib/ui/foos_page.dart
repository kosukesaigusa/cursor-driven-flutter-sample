import 'package:cursor_driven_flutter_sample/logic/foo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FoosPage extends ConsumerWidget {
  const FoosPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foos = ref.watch(foosNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Foo 一覧')),
      body: switch (foos) {
        AsyncData(value: final foos) => ListView.builder(
            itemBuilder: (context, index) => ListTile(
              title: Text(foos[index].someField),
            ),
          ),
        AsyncError() => const Center(child: Text('エラーが発生しました')),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
