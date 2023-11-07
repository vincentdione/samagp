
class ApiEndPoints {
  static final String baseUrl = 'http://10.1.3.198:5000/';
  static AuthEndPoints authEndPoints = AuthEndPoints();
}

class AuthEndPoints {
  final String register = 'auth/register';
  final String login = 'auth/login';

}