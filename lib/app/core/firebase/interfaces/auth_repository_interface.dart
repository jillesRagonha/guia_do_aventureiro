import 'package:guiadoaventureiro/app/core/firebase/responses/response_default.dart';

abstract class IAuthRepository{
  Future<ResponseDefault> doLoginGoogle();
  Future<ResponseDefault> doLoginEmailPassword();
  Future<ResponseDefault> registerEmailPassword();
  Future<ResponseDefault> getUser();
  Future<ResponseDefault> logout();
}