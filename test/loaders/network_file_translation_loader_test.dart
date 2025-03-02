import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_asset_bundle.dart';

class CustomNetworkFileTranslationLoader extends NetworkFileTranslationLoader {
  CustomNetworkFileTranslationLoader({required baseUri})
      : super(baseUri: baseUri);

  @override
  Future<String> loadString(String fileName, String extension) {
    return Future.value("{}");
  }
}

void main() {
  test('should load correct map', () async {
    var instance = CustomNetworkFileTranslationLoader(baseUri: Uri());

    var result = await instance.load();

    expect(result, isMap);
    expect(result, isEmpty);
  });
}
