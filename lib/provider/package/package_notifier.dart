import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqcast_task/model/package/package.dart';
import 'package:uniqcast_task/provider/package/package_state.dart';

part 'package_notifier.g.dart';

@riverpod
class PackageNotifier extends _$PackageNotifier {
  @override
  PackageState build(Package package) {
    return PackageState(
      id: package.id,
      purchasedDate: package.purchasedDate,
    );
  }
}
