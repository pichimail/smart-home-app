import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> toggleDevice(String path, bool isOn) async {
  final url = Uri.parse(
    'https://chinna-home-6mpu5u-default-rtdb.asia-southeast1.firebasedatabase.app$path.json'
  );

  final response = await http.patch(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'value': isOn ? 'ON' : 'OFF'}),
  );

  if (response.statusCode == 200) {
    print('✅ Success: $path = ${isOn ? "ON" : "OFF"}');
  } else {
    print('❌ Failed: ${response.statusCode}');
  }
}
