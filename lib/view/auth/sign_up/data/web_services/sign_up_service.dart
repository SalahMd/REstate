import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:restate/core/functions/checkinternet.dart';
import 'package:restate/core/request_status/request_status.dart';

class SignUpService {
  Future<Either<RequestStatus, Map>> postSignUp(
    String linkurl,
    Map data
  ) async {
    try {
      http.Response response;
      if (await checkInternet()) {
        response = await http.post(Uri.parse(linkurl),body:data);
      } else {
        return left(RequestStatus.offline);
      }
      // Check the code status
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responseBody = jsonDecode(response.body);
        return right(responseBody);
      } else {
        return left(RequestStatus.serverError);
      }
    } catch (_) {
      return left(RequestStatus.serverError);
    }
  }
}
