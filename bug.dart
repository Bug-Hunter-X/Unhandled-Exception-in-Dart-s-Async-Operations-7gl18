```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle the successful response
      final jsonData = json.decode(response.body);
      print(jsonData);
    } else {
      // Handle the error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
  }
}
```