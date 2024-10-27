import 'package:restate/core/request_status/request_status.dart';

handelingData(response) {
  if (response is RequestStatus) {
    return response;
  } else {
    return RequestStatus.success;
  }
}
