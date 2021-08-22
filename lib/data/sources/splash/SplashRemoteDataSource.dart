import 'package:your_sooq/data/sources/base/BaseRemoteDataSource.dart';
import 'package:your_sooq/data/sources/splash/ISplashRemoteDataSource.dart';
import 'package:your_sooq/networking/NetworkingService.dart';

class SplashRemoteDataSource extends BaseRemoteDataSource
    implements ISplashRemoteDataSource {
  final NetworkingService networkingService;

  SplashRemoteDataSource(this.networkingService);
}
