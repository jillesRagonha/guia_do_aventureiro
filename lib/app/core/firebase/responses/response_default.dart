import 'package:guiadoaventureiro/app/core/firebase/responses/response_status.dart';

class ResponseDefault<T> {
  final T objeto;
  final String mensagem;
  final ResponseStatus status;

  ResponseDefault({this.objeto, this.mensagem, this.status});
}
