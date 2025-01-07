import 'package:dio/dio.dart';
import 'package:wallpaper_flutter_app/others/api_key.dart';

class ImageRepository {
  static const String _baseUrl = 'https://api.unsplash.com';
  static final String _fetchImage = '/photos?client_id=$apiKey';

  final Dio _dio = Dio(); // Create an instance of Dio

  // Function to fetch images from Unsplash API
  Future<List<dynamic>> fetchImages() async {
    final url = '$_baseUrl$_fetchImage';

    try {
      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        // If the server returns a 200 OK response, parse the JSON data
        return response.data;
      } else {
        // If the server did not return a 200 OK response, throw an error
        throw Exception('Failed to load images');
      }
    } catch (e) {
      // Catch and handle any errors that occur during the API call
      print('Error: $e');
      throw Exception('Failed to fetch images');
    }
  }
}
