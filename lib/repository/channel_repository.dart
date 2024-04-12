import 'package:dio/dio.dart';
import 'package:uniqcast_task/model/channel/channel.dart';

class ChannelRepository {
  final Dio _dio;

  ChannelRepository(this._dio);

  Future<List<Channel>> fetchChannels(
      String? ouid, List<int> packageIds) async {
    try {
      const baseUrl = 'https://office-new-dev.uniqcast.com:12611/api/client/v2';
      final endpoint = '/$ouid/channels';
      final packageQueryParam =
          '?packages=${packageIds.map((id) => Uri.encodeComponent(id.toString())).join(',')}';

      final url = '$baseUrl$endpoint$packageQueryParam';

      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = response.data['data'];
        final List<Channel> channels = jsonData
            .map((json) => Channel.fromJson(json as Map<String, dynamic>))
            .toList();
        return channels;
      } else {
        throw Exception('Failed to fetch channels: ${response.statusMessage}');
      }
    } catch (error) {
      throw Exception('Error fetching channels: $error');
    }
  }
}
