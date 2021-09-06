import 'package:your_sooq/data/repositories/base/BaseRepository.dart';
import 'package:your_sooq/data/sources/mainlogin/IMainLocalDataSource.dart';
import 'package:your_sooq/data/sources/mainlogin/IMainRemoteDataSource.dart';

import 'IMainLoginRepository.dart';

class MainLoginRepository extends BaseRepository
    implements IMainLoginRepository {
  final IMainLoginRemoteDataSource mainLoginRemoteDataSource;
  final IMainLoginLocalDataSource mainLoginLocalDataSource;

  MainLoginRepository(
      this.mainLoginRemoteDataSource, this.mainLoginLocalDataSource);
}
