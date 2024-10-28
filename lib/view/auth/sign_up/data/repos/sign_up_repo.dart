import 'package:restate/core/constants/apis.dart';
import 'package:restate/view/auth/sign_up/data/web_services/sign_up_service.dart';

class SignUpRepo {
  final SignUpService signUpRepo = SignUpService();
  SignUpRepo();

   signUp(Map data) async {
    final signUp = await signUpRepo.postSignUp(Apis.signUp,data);
    return signUp.fold((l) => l, (r) => r);
  
  }
}
