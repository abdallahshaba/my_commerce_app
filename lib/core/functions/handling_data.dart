import 'package:my_ecommerce_app/core/functions/status_request.dart';

handlingData(response) {
  if (response is StatusRequest) {
    if (response == StatusRequest.offlineFaliure) {
      return StatusRequest.offlineFaliure;
    } else {
      return StatusRequest.serverFaliure;
    }
  } else {
    return StatusRequest.success;
  }
}
