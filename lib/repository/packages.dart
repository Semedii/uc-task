import 'package:dio/dio.dart';
import 'package:uniqcast_task/api/dio_interceptor.dart';

Future<void> fetchUserPackages(String ouid, int userId) async {
  final Dio dio = DioInterceptor.addInterceptors();
  try {
    String baseUrl = 'https://office-new-dev.uniqcast.com:12611/api/client/v1';
    String endpoint = '/$ouid/users/$userId/packages';
    String queryParams = '?device_class=Mobile';

    // Constructing the URL
    String url = '$baseUrl$endpoint$queryParams';

    print("afdaf $url");

    // Constructing the request headers

    // Making the HTTP GET request
  final response = await dio.get(url);

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON response
      // and handle it accordingly
      print('Packages fetched successfully: ${response.data}');
    } else {
      // If the server returns an error response, throw an exception or handle it accordingly
      print('Failed to fetch pacsskages: ${response.statusMessage}');
    }
  } catch (error) {
    // Handle any errors that occur during the HTTP request
    print('Error fetching packages: ${error}');
  }
}

Future<void> fetchChannels() async {
   List<int> packageIds=[1593, 2364, 2559, 2560];
  final Dio dio = DioInterceptor.addInterceptors();
  try {
    String baseUrl = 'https://office-new-dev.uniqcast.com:12611/api/client/v2';
    String endpoint = '/jerko_majcen/channels';
    
    // Constructing the package query parameter
    String packagesQueryParam = packageIds.map((id) => 'packages=$id').join('&');

    // Constructing the URL
    String url = '$baseUrl$endpoint?$packagesQueryParam';


    // Making the HTTP GET request
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON response
      // and handle it accordingly
      print('Channels fetched successfully: ${response.data}');
    } else {
      // If the server returns an error response, throw an exception or handle it accordingly
      print('Failed to fetch channels: ${response.statusCode} - ${response.statusMessage}');
    }
  } catch (error) {
    // Handle any errors that occur during the HTTP request
    print('Error fetching channels: $error');
  }
}