import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqcast_task/api/dio_interceptor.dart';
import 'package:uniqcast_task/model/package/package.dart';
import 'package:uniqcast_task/model/user/user.dart';
import 'package:uniqcast_task/provider/package/package_state.dart';
import 'package:uniqcast_task/repository/package_repository.dart';
import 'package:uniqcast_task/user_data_storage.dart';

part 'package_notifier.g.dart';

@riverpod
class PackageNotifier extends _$PackageNotifier {
  @override
  PackageState build() {
    return PackageInitialState();
  }

  Future<void> fetchUserPackages() async {
    final Dio dio = DioInterceptor.addInterceptors();
    PackageRepository packageRepository = PackageRepository(dio);
    User? user = await UserDataStorage.loadUserData();
    state = PackageLoadingState();
    final List<Package> packages =
        await packageRepository.fetchUserPackages(user?.uid, user?.userId);
    state = PackageLoadedState(packages: packages);
  }
}
