import 'package:flutter/cupertino.dart';
import 'package:localstorage/localstorage.dart';

class CheckRoleProvider extends ChangeNotifier {

  String tokenUser = '';

  void defineRole() async {
    final LocalStorage localStorage = LocalStorage('todo_app.json');

    tokenUser = localStorage.getItem('token') ?? 'new';
    notifyListeners();
    print(tokenUser);
    return null;
  }

  CheckRoleProvider() {
    Future.delayed(
      const Duration(
        milliseconds: 1700,
      ),
    ).whenComplete(() => defineRole());
  }
}