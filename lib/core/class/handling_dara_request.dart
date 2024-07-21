import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_ecommerce_app/core/constants/app_image_asset.dart';
import 'package:my_ecommerce_app/core/functions/status_request.dart';

class HandlingDataRequest extends StatelessWidget {
  const HandlingDataRequest({super.key, required this.statusRequest, required this.widget});
  final StatusRequest? statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading?
    Center(child: Lottie.asset(AppImageAsset.loading2, width: 300 , height: 300),)
    :
     statusRequest == StatusRequest.serverFaliure?
      Center(child: Lottie.asset(AppImageAsset.server, width: 300 , height: 300),)
      :
      widget;
      }
}