// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_items.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$qiitaItemsNotifierHash() =>
    r'2a134d38493047c8191866ca5ebb44d6980d6905';

/// Qiita の記事一覧を管理する。
///
/// Copied from [QiitaItemsNotifier].
@ProviderFor(QiitaItemsNotifier)
final qiitaItemsNotifierProvider = AutoDisposeAsyncNotifierProvider<
    QiitaItemsNotifier, List<QiitaItem>>.internal(
  QiitaItemsNotifier.new,
  name: r'qiitaItemsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$qiitaItemsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$QiitaItemsNotifier = AutoDisposeAsyncNotifier<List<QiitaItem>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
