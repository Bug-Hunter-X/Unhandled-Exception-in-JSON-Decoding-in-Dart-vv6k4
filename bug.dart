```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // ignore: avoid_dynamic_calls
      final data = jsonDecode(response.body);
      // Use the data
      print(data);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle the error
    print('Error: $e');
    // Rethrow the exception to be handled by a higher-level function
    rethrow;
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    // Handle the exception
    print('Main function caught an error: $e');
  }
}
```