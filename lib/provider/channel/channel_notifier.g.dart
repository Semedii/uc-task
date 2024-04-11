// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$channelNotifierHash() => r'd00389c976df48224e161edb7a0c1f9ccee343f0';

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

abstract class _$ChannelNotifier
    extends BuildlessAutoDisposeNotifier<ChannelState> {
  late final Channel channel;

  ChannelState build(
    Channel channel,
  );
}

/// See also [ChannelNotifier].
@ProviderFor(ChannelNotifier)
const channelNotifierProvider = ChannelNotifierFamily();

/// See also [ChannelNotifier].
class ChannelNotifierFamily extends Family<ChannelState> {
  /// See also [ChannelNotifier].
  const ChannelNotifierFamily();

  /// See also [ChannelNotifier].
  ChannelNotifierProvider call(
    Channel channel,
  ) {
    return ChannelNotifierProvider(
      channel,
    );
  }

  @override
  ChannelNotifierProvider getProviderOverride(
    covariant ChannelNotifierProvider provider,
  ) {
    return call(
      provider.channel,
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
  String? get name => r'channelNotifierProvider';
}

/// See also [ChannelNotifier].
class ChannelNotifierProvider
    extends AutoDisposeNotifierProviderImpl<ChannelNotifier, ChannelState> {
  /// See also [ChannelNotifier].
  ChannelNotifierProvider(
    Channel channel,
  ) : this._internal(
          () => ChannelNotifier()..channel = channel,
          from: channelNotifierProvider,
          name: r'channelNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$channelNotifierHash,
          dependencies: ChannelNotifierFamily._dependencies,
          allTransitiveDependencies:
              ChannelNotifierFamily._allTransitiveDependencies,
          channel: channel,
        );

  ChannelNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.channel,
  }) : super.internal();

  final Channel channel;

  @override
  ChannelState runNotifierBuild(
    covariant ChannelNotifier notifier,
  ) {
    return notifier.build(
      channel,
    );
  }

  @override
  Override overrideWith(ChannelNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChannelNotifierProvider._internal(
        () => create()..channel = channel,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        channel: channel,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ChannelNotifier, ChannelState>
      createElement() {
    return _ChannelNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChannelNotifierProvider && other.channel == channel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, channel.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChannelNotifierRef on AutoDisposeNotifierProviderRef<ChannelState> {
  /// The parameter `channel` of this provider.
  Channel get channel;
}

class _ChannelNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<ChannelNotifier, ChannelState>
    with ChannelNotifierRef {
  _ChannelNotifierProviderElement(super.provider);

  @override
  Channel get channel => (origin as ChannelNotifierProvider).channel;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
