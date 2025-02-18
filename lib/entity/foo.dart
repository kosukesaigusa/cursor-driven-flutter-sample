import 'package:freezed_annotation/freezed_annotation.dart';

part 'foo.freezed.dart';
part 'foo.g.dart';

@freezed
class Foo with _$Foo {
  const factory Foo({
    required String someField,
    @Default([]) List<String> things,
  }) = _Foo;

  factory Foo.fromJson(Map<String, dynamic> json) => _$FooFromJson(json);
}
