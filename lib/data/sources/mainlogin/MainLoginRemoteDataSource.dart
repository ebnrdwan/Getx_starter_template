import 'package:your_sooq/data/sources/base/BaseRemoteDataSource.dart';
import 'package:your_sooq/data/sources/mainlogin/IMainRemoteDataSource.dart';
import 'package:your_sooq/networking/NetworkingService.dart';

class MainLoginRemoteDataSource extends BaseRemoteDataSource
    implements IMainLoginRemoteDataSource {
  final NetworkingService networkingService;

  MainLoginRemoteDataSource(this.networkingService);
}
