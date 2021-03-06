import 'package:fimber/fimber.dart';
import 'package:restaurant/models/register_user/register_user.dart';
import 'package:restaurant/models/user_register_body.dart';
import 'package:restaurant/utils/mixins/service_mixin.dart';
import 'package:dio/dio.dart' as dio;

class SignupService with ServiceMixin {
  Future<RegisterUser?> registerCall(UserRegisterBody userBody) async {
    final body = dio.FormData.fromMap({
      nameKey: userBody.name,
      mobileKey: userBody.phone,
      passwordKey: userBody.password,
      passwordConfirmationKey: userBody.confirmPassword,
    });

    Fimber.i('userBody= ${body.fields}');
    final data = await api.request(
      signupUrl,
      postMethod,
      data: body,
      contentType: 'multipart/form-data',
    );
    if (data != null) {
      return RegisterUser.fromJson(data);
    }
    /*final user = RegisterUser.fromJson(data);
    Fimber.i('user= ${user.id}');
    return user;*/
  }
}
