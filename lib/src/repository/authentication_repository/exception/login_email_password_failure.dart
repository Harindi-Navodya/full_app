class LoginWithEmailAndPasswordFailure implements Exception {
  final String code;
  final String message;

  LoginWithEmailAndPasswordFailure({this.code = '', this.message = ''});

  factory LoginWithEmailAndPasswordFailure.code(String code) {
    String errorMessage = _getMessageFromErrorCode(code);
    return LoginWithEmailAndPasswordFailure(code: code, message: errorMessage);
  }

  static String _getMessageFromErrorCode(String code) {
    // You can define custom error messages based on Firebase error codes
    switch (code) {
      case 'user-not-found':
        return 'User not found. Please check your email or sign up.';
      case 'wrong-password':
        return 'Incorrect password. Please try again.';
      case 'invalid-email':
        return 'Invalid email address. Please enter a valid email.';
      // Add more cases as needed for different Firebase error codes
      default:
        return 'An error occurred while logging in. Please try again later.';
    }
  }
}
