import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../models/user_model.dart';

class AuthService {
  // URL API
  final String apiUrl = 'http://localhost:8000/api/login';

  // Penyimpanan aman untuk token
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  /// Login dengan email dan password
  Future<bool> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        await storage.write(key: 'token', value: data['token']);
        return true;
      } else {
        print('Login failed: ${response.body}');
        return false;
      }
    } catch (e) {
      print('Error during login: $e');
      return false;
    }
  }

  /// Mendapatkan profil pengguna yang sudah login
  Future<User?> getProfile() async {
    try {
      final token = await storage.read(key: 'token');
      if (token == null) {
        print('No token found');
        return null;
      }

      final response = await http.get(
        Uri.parse('$apiUrl/profile'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return User.fromJson(data['user']);
      } else {
        print('Failed to fetch profile: ${response.body}');
        return null;
      }
    } catch (e) {
      print('Error during profile fetch: $e');
      return null;
    }
  }

  /// Logout dan hapus token dari penyimpanan
  Future<void> logout() async {
    try {
      await storage.delete(key: 'token');
    } catch (e) {
      print('Error during logout: $e');
    }
  }
}
