import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqcast_task/model/user/user.dart';
import 'package:uniqcast_task/provider/user/user_state.dart';

part 'user_notifier.g.dart';

@riverpod
class UserNotifier extends _$UserNotifier {
  @override
  UserState build() {
    return UserState();
  }

  void loadUser(User user) {
    state = state.copyWith(
      uid: user.uid,
      name: user.name,
      deviceId: user.deviceId,
      userId: user.userId,
    );
    print("device waxa weye ${state.deviceId} ${user.deviceId}");
  }
}
