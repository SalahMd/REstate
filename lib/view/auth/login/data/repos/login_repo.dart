

import 'package:restate/core/constants/apis.dart';
import 'package:restate/view/auth/login/data/web_services/login_services.dart';

class LoginRepo {
  final LoginServices transferServices = LoginServices();
  LoginRepo();

   getAllTransfers(Map data) async {
    final transfers = await transferServices.postLogin(Apis.login,data);
    return transfers.fold((l) => l, (r) => r);
  
  }
}
