// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$packageNotifierHash() => r'91d40f74feea9f022ef360c38218770d00f37753';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PackageNotifier
    extends BuildlessAutoDisposeNotifier<PackageState> {
  late final Package package;

  PackageState build(
    Package package,
  );
}

/// See also [PackageNotifier].
@ProviderFor(PackageNotifier)
const packageNotifierProvider = PackageNotifierFamily();

/// See also [PackageNotifier].
class PackageNotifierFamily extends Family<PackageState> {
  /// See also [PackageNotifier].
  const PackageNotifierFamily();

  /// See also [PackageNotifier].
  PackageNotifierProvider call(
    Package package,
  ) {
    return PackageNotifierProvider(
      package,
    );
  }

  @override
  PackageNotifierProvider getProviderOverride(
    covariant PackageNotifierProvider provider,
  ) {
    return call(
      provider.package,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'packageNotifierProvider';
}

/// See also [PackageNotifier].
class PackageNotifierProvider
    extends AutoDisposeNotifierProviderImpl<PackageNotifier, PackageState> {
  /// See also [PackageNotifier].
  PackageNotifierProvider(
    Package package,
  ) : this._internal(
          () => PackageNotifier()..package = package,
          from: packageNotifierProvider,
          name: r'packageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$packageNotifierHash,
          dependencies: PackageNotifierFamily._dependencies,
          allTransitiveDependencies:
              PackageNotifierFamily._allTransitiveDependencies,
          package: package,
        );

  PackageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.package,
  }) : super.internal();

  final Package package;

  @override
  PackageState runNotifierBuild(
    covariant PackageNotifier notifier,
  ) {
    return notifier.build(
      package,
    );
  }

  @override
  Override overrideWith(PackageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PackageNotifierProvider._internal(
        () => create()..package = package,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        package: package,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PackageNotifier, PackageState>
      createElement() {
    return _PackageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PackageNotifierProvider && other.package == package;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, package.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PackageNotifierRef on AutoDisposeNotifierProviderRef<PackageState> {
  /// The parameter `package` of this provider.
  Package get package;
}

class _PackageNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<PackageNotifier, PackageState>
    with PackageNotifierRef {
  _PackageNotifierProviderElement(super.provider);

  @override
  Package get package => (origin as PackageNotifierProvider).package;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
