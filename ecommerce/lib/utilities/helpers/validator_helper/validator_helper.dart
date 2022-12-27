class ValidatorHelper {
  bool isUsername(String username) {
    final userNameRegex = RegExp(
      r'[^a-zA-Z0-9\s]',
    );
    return !username.contains(userNameRegex) && username.length >= 6;
  }

  bool isEmail(String email) {
    final emailRegex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return emailRegex.hasMatch(email);
  }

  bool isPhoneNumber(String phoneNumber) {
    final phoneNumberRegex = RegExp(
      '[^0-9]',
    );
    return !phoneNumberRegex.hasMatch(phoneNumber) && phoneNumber.length == 10;
  }

  bool isPassword(String password) {
    final passwordRegex =
        RegExp(r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$');
    return passwordRegex.hasMatch(password);
  }

  bool isConfirmPassword(String confirmPassword, String password) {
    return confirmPassword == password;
  }

  String setupPrice(int price) {
    var newList = [];

    newList = price.toString().split('');
    var i = newList.length;

    while (i > 3) {
      i = i - 3;
      newList.insert(i, ',');
    }

    return newList.join();
  }
}
