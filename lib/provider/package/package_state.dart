import 'package:uniqcast_task/model/package/package.dart';

abstract class PackageState {
  PackageState();
}

class PackageInitialState extends PackageState {
  PackageInitialState();
}

class PackageLoadingState extends PackageState {
  PackageLoadingState();
}

class PackageLoadedState extends PackageState {
  final List<Package>? packages;
  PackageLoadedState({
    this.packages,
  });
  PackageLoadedState copyWith({
    List<Package>? packages,
  }) {
    return PackageLoadedState(
      packages: packages ?? this.packages,
    );
  }
}
