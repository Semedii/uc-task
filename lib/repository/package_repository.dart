import 'package:dio/dio.dart';
import 'package:uniqcast_task/model/package/package.dart';

class PackageRepository {
  final Dio _dio;

  PackageRepository(this._dio);

  Future<List<Package>> fetchUserPackages(String? ouid, int? userId) async {
    try {
      String baseUrl =
          'https://office-new-dev.uniqcast.com:12611/api/client/v1';
      String endpoint = '/$ouid/users/$userId/packages';
      String queryParams = '?device_class=Mobile';

      String url = '$baseUrl$endpoint$queryParams';

      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = response.data['data'];
        final List<Package> packages = jsonData
            .map((json) => Package.fromJson(json as Map<String, dynamic>))
            .toList();
        return packages;
      } else {
        throw Exception('Failed to fetch packages: ${response.statusMessage}');
      }
    } catch (error) {
      throw Exception('Error fetching packages: $error');
    }
  }
}
