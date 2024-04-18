import 'package:injectable/injectable.dart';

abstract class IAppKeyHelper {
  bool validateAppKey(String key);
}

@Singleton(as: IAppKeyHelper)
class AppKeyHelperImpl implements IAppKeyHelper {
  final String localAppKey;
  AppKeyHelperImpl(@Named('appKey') this.localAppKey);

  @override
  bool validateAppKey(String key) {
    // [TODO] Hash local app key and comprare to sended one
    return (key == localAppKey);
  }
}
