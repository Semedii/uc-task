import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqcast_task/api/dio_interceptor.dart';
import 'package:uniqcast_task/model/channel/channel.dart';
import 'package:uniqcast_task/model/user/user.dart';
import 'package:uniqcast_task/provider/channel/channel_state.dart';
import 'package:uniqcast_task/repository/channel_repository.dart';
import 'package:uniqcast_task/user_data_storage.dart';

part 'channel_notifier.g.dart';

@riverpod
class ChannelNotifier extends _$ChannelNotifier {
  @override
  ChannelState build() {
   return ChannelInitialState();
  }

    Future<void> fetchPackageChannels(List<int> packageIds) async {
      
    state = ChannelLoadingState();
    final Dio dio = DioInterceptor.addInterceptors();
    ChannelRepository channelRepository = ChannelRepository(dio);
  
    User? user = await UserDataStorage.loadUserData();
    final List<Channel> channels =
        await channelRepository.fetchChannels(user?.uid, packageIds);
    state = ChannelLoadedState(channels: channels);
  }
}
