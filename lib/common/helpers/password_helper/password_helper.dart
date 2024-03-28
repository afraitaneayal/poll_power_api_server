class PasswordHelper {
  static bool verifyPassword(
      String? passwordFromDB, String passwordFromRequest) {
    return (passwordFromDB == passwordFromRequest);
  }
}
