import 'package:dio/dio.dart';
import 'package:pet_fit/parslib/models/view/application_constants.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = NetworkManager.init();
      return _instance!;
    }
  }

  late final Dio dio;
  ApplicationConstants get constants => ApplicationConstants.instance;

  NetworkManager.init() {
    dio = Dio(
      BaseOptions(baseUrl: constants.servicePath),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          handler.next(options);
        },
      ),
    );
  }
}
