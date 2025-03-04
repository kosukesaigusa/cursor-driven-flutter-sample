import 'package:cursor_driven_flutter_sample/entity/qiita_item.dart';
import 'package:cursor_driven_flutter_sample/logic/qiita_items.dart';
import 'package:cursor_driven_flutter_sample/repository/qiita_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod/riverpod.dart';

// QiitaRepository のモッククラス
class MockQiitaRepository extends Mock implements QiitaRepository {}

void main() {
  late MockQiitaRepository mockRepository;
  late ProviderContainer container;

  setUp(() {
    mockRepository = MockQiitaRepository();
    container = ProviderContainer(
      overrides: [
        qiitaRepositoryProvider.overrideWithValue(mockRepository),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('QiitaItemsNotifier のテスト', () {
    final mockItems = [
      QiitaItem(
        id: '1',
        title: 'テスト記事1',
        url: 'https://qiita.com/items/1',
        author: const QiitaUser(
          id: 'user1',
          name: 'ユーザー1',
          profileImageUrl: 'https://example.com/user1.png',
        ),
        createdAt: DateTime(2023, 1, 1),
        likesCount: 10,
      ),
      QiitaItem(
        id: '2',
        title: 'テスト記事2',
        url: 'https://qiita.com/items/2',
        author: const QiitaUser(
          id: 'user2',
          name: 'ユーザー2',
          profileImageUrl: 'https://example.com/user2.png',
        ),
        createdAt: DateTime(2023, 1, 2),
        likesCount: 20,
      ),
    ];

    test('初期状態では記事一覧を取得する', () async {
      // モックの設定
      when(() => mockRepository.fetchItems())
          .thenAnswer((_) async => mockItems);

      // 初期状態の確認
      expect(
        container.read(qiitaItemsNotifierProvider),
        const AsyncValue<List<QiitaItem>>.loading(),
      );

      // 非同期処理の完了を待つ
      await container.read(qiitaItemsNotifierProvider.future);

      // 結果の確認
      expect(
        container.read(qiitaItemsNotifierProvider).value,
        mockItems,
      );

      // モックの呼び出し確認
      verify(() => mockRepository.fetchItems()).called(1);
    });

    test('fetchPage で指定したページの記事一覧を取得する', () async {
      // モックの設定
      when(() => mockRepository.fetchItems(page: 2, perPage: 20))
          .thenAnswer((_) async => mockItems);

      // 初期状態のモック設定
      when(() => mockRepository.fetchItems()).thenAnswer((_) async => []);

      // 初期状態の読み込みを待つ
      await container.read(qiitaItemsNotifierProvider.future);

      // fetchPage の実行
      await container.read(qiitaItemsNotifierProvider.notifier).fetchPage(2);

      // 結果の確認
      expect(
        container.read(qiitaItemsNotifierProvider).value,
        mockItems,
      );

      // モックの呼び出し確認
      verify(() => mockRepository.fetchItems(page: 2, perPage: 20)).called(1);
    });

    test('リポジトリがエラーを投げた場合、エラー状態になる', () async {
      // モックの設定
      final exception = Exception('テストエラー');
      when(() => mockRepository.fetchItems(page: 3, perPage: 20))
          .thenThrow(exception);

      // 初期状態のモック設定
      when(() => mockRepository.fetchItems()).thenAnswer((_) async => []);

      // 初期状態の読み込みを待つ
      await container.read(qiitaItemsNotifierProvider.future);

      // fetchPage の実行
      await container.read(qiitaItemsNotifierProvider.notifier).fetchPage(3);

      // 結果の確認
      expect(
        container.read(qiitaItemsNotifierProvider),
        isA<AsyncError<List<QiitaItem>>>(),
      );

      // エラーの確認
      expect(
        container.read(qiitaItemsNotifierProvider).error,
        exception,
      );

      // モックの呼び出し確認
      verify(() => mockRepository.fetchItems(page: 3, perPage: 20)).called(1);
    });
  });
}
