import 'package:cursor_driven_flutter_sample/entity/foo.dart';
import 'package:cursor_driven_flutter_sample/repository/foo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foo.g.dart';

/// [Foo] 一覧を管理する。
@riverpod
class FoosNotifier extends _$FoosNotifier {
  @override
  Future<List<Foo>> build() async =>
      ref.read(fooRepositoryProvider).fetchFoos();

  /// [Foo] を作成し、自信をリビルドする。
  Future<void> createFoo(String someField) async {
    await ref.read(fooRepositoryProvider).createFoo(someField);
    ref.invalidateSelf();
  }
}
