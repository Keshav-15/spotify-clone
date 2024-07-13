import 'package:flutter/material.dart';
import 'package:spotify/src/apis/apimanagers/auth_api_manager.dart';
import 'package:spotify/src/models/res_base_model.dart';
import 'package:spotify/src/base/dependencyinjection/locator.dart';
import 'package:spotify/src/base/utils/common_methods.dart';

class AuthController {
  void loginApiCall({required BuildContext context}) async {
    final value = await locator<AuthApiManager>().login(ResBaseModel());
    logger(value.message ?? "");
  }
}
