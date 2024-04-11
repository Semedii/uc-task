import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqcast_task/model/user/user.dart';
import 'package:uniqcast_task/provider/user/user_state.dart';

part 'user_notifier.g.dart';

@riverpod
class UserNotifier extends _$UserNotifier {
  @override
  UserState build(User user) {
    return UserState(
      uid: user.uid,
      name: user.name,
      deviceId: user.deviceId,
      isMulticastNetwork: user.isMulticastNetwork,
      isBlocked: user.isBlocked,
    );
  }
}
