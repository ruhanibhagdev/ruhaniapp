class Utility{

  bool validateEmail(String email) {
    String pattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
    RegExp emailRegex = RegExp(pattern);
    return emailRegex.hasMatch(email);
  }

  bool validateName(String name){
    final RegExp nameRegex = RegExp(r"^[a-zA-Z\s'-]+$");
    return nameRegex.hasMatch(name);
  }

}