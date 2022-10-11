class URLs {
  // static const baseUrl = 'https://localhost:8000';
    //  static const baseUrl = 'http://192.168.1.11';
  static const baseUrl = 'http://10.1.10.91';
  static const authLocal = '$baseUrl/api/login_check';
  static const registerLocal = '$baseUrl/api/users';
  static const facebookLogin = '$baseUrl/api/users/facebook';
  static const googleLogin = '$baseUrl/api/users/google';
  static const forgetPassword = '$baseUrl/api/users/forgetpassword';
  static const categories = '$baseUrl/api/categories';
  static const posts = '$baseUrl/api/posts';
  static const images = '$baseUrl/api/images';
  static const comments = '$baseUrl/api/comments';
  static const addresses = '$baseUrl/api/addresses';
  // static const orders = '$baseUrl/orders';
  static const users = '$baseUrl/api/users';
  static const facebookPath =
      'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=';
}
