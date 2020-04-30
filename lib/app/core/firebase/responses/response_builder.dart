import 'package:guiadoaventureiro/app/core/firebase/responses/response_status.dart';

import 'response_default.dart';

class ResponseBuilder{
  static ResponseDefault falha<T>({T objeto, String mensagem}){
    return ResponseDefault<T>(
      objeto: objeto,
      mensagem: mensagem,
      status: ResponseStatus.ERRO
    );
  }

  static ResponseDefault sucesso<T>({T objeto, String mensagem}){
    return ResponseDefault<T>(
        objeto: objeto,
        mensagem: mensagem,
        status: ResponseStatus.SUCESSO
    );
  }
}