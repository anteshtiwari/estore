
import 'package:estore/data/services/auth_service.dart';
import 'package:estore/data/states/auth_data.dart';
import 'package:estore/screens/auth_state_builder.dart';
import 'package:estore/utils/custom_exception.dart';
import 'package:estore/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EmailPasswordAuthData extends AuthData {
  bool _hasSelectedSignUpView = true;
  bool get getHasSelectedSignUpView => _hasSelectedSignUpView;
  toggleAuthView() {
    _hasSelectedSignUpView = !_hasSelectedSignUpView;
    notifyListeners();
  }

  signUpUsingEmailAndPassword({
    String name,
    String password,
    String email,
  }) async {
    try {
      setBusy();

      User user = await authService.signUp(email: email, password: password);

      print("Signed up user\'s uid : ${user.uid}");

      Utils.removeAllAndPush(AuthStateBuilder());

      setFree();
    } on CustomException catch (e) {
      Utils.errorSnackbar(e.message);
      setFree();
    }
  }

  signInUsingEmailAndPassword({
    String email,
    String password,
  }) async {
    try {
      setBusy();

      await authService.signIn(email: email, password: password);

      Utils.removeAllAndPush(AuthStateBuilder());
      setFree();
    } on CustomException catch (e) {
      setFree();

      if (e.code == 'user-not-found') {
        Utils.errorSnackbar("No user found, try signing up instead!");
        return;
      }
      Utils.errorSnackbar(e.message);
    }
  }
}

