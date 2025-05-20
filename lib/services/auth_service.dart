import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  Future<void> register(Map<String, dynamic> userData) async {
    final prefs = await SharedPreferences.getInstance();

    // Salvando dados individualmente
    await prefs.setString('user_nome', userData['nome']);
    await prefs.setString('user_email', userData['email']);
    await prefs.setString('user_login', userData['login']);
    await prefs.setString('user_password', userData['password']);
  }

  Future<bool> login(String login, String password) async {
    final prefs = await SharedPreferences.getInstance();

    final storedLogin = prefs.getString('user_login');
    final storedPassword = prefs.getString('user_password');

    return login == storedLogin && password == storedPassword;
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('user_login');
    await prefs.remove('user_password');
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('user_login');
  }

  Future<String?> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_nome');
  }
}
