import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/app/utils/helper/helper_functions.dart';

class ApiServices extends GetxController {
  final baseUrl = 'http://95.216.221.251/dev/api';
  final postHomeAPI = 'home-posts-test';

  Future<String?> fetchPostsData() async {
    final url = Uri.parse('$baseUrl/$postHomeAPI');
    try {
      var response = await http.post(url);
      if (response.statusCode == 200) {
        debugPrint('Data from API ====> ${response.body}');
        return response.body;
      } else {
        var message = 'Could not fetch posts: ${response.reasonPhrase}';
        debugPrint(message);
        HelperFunctions.showError(message: message);
      }
    } catch (e) {
      var message = 'Could not fetch posts: $e';
      HelperFunctions.showError(message: message);
      debugPrint(message);
    }
    return null;
  }
}
