```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle the successful response
      try {
        final jsonData = json.decode(response.body);
        print('Data: $jsonData');
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      // Handle HTTP errors
      throw Exception('HTTP error: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e) {
    // Handle other exceptions
    print('An error occurred: $e');
  }
}
```