import 'package:your_sooq/data/sources/splash/ISplashLocalDataSource.dart';
import 'package:your_sooq/data/sources/splash/ISplashRemoteDataSource.dart';

import 'ISplashRepository.dart';

class SplashRepository implements ISplashRepository {
  final ISplashRemoteDataSource splashRemoteDataSource;
  final ISplashLocalDataSource splashLocalDataSource;

  SplashRepository(this.splashRemoteDataSource, this.splashLocalDataSource);
}
