class UserState {
  final String uid;
  final String name;
  final int deviceId;
  final int userId;

  UserState({
    this.uid = '',
    this.name = '',
    this.deviceId = 1,
    this.userId = 1,
  });

  UserState copyWith({String? uid, String? name, int? deviceId, int? userId}) {
    return UserState(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      deviceId: deviceId ?? this.deviceId,
      userId: userId ?? this.userId,
    );
  }
}
