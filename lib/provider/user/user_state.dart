class UserState {
  final String uid;
    final String name;
    final String deviceId;
    final bool isMulticastNetwork;
    final bool isBlocked;

  const UserState({
    required this.uid,
    required this.name,
    required this.deviceId,
    required this.isMulticastNetwork,
    required this.isBlocked,
  });
}
