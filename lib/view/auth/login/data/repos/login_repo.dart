import 'package:restate/core/constants/apis.dart';
import 'package:restate/view/auth/login/data/web_services/login_services.dart';

class LoginRepo {
  final LoginServices loginServices = LoginServices();
  LoginRepo();

   login(Map data) async {
    final login = await loginServices.postLogin(Apis.login,data);
    return login.fold((l) => l, (r) => r);
  
  }
}
