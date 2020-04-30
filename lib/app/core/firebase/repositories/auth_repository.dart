import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guiadoaventureiro/app/core/firebase/interfaces/auth_repository_interface.dart';
import 'package:guiadoaventureiro/app/core/firebase/responses/response_builder.dart';
import 'package:guiadoaventureiro/app/core/firebase/responses/response_default.dart';

class AuthRepository implements IAuthRepository {
  final FirebaseAuth auth;

  AuthRepository(this.auth);

  @override
  Future<ResponseDefault> doLoginEmailPassword(
      {String email, String senha}) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: email.trim(), password: senha.trim());
      return ResponseBuilder.sucesso<FirebaseUser>(
        objeto: await auth.currentUser(),
        mensagem: "Logado com sucesso ",
      );
    } catch (e) {
      return ResponseBuilder.falha(
          objeto: e, mensagem: "Falha na autenticação -----> ${e.toString()}");
    }
  }

  @override
  Future<ResponseDefault> doLoginGoogle() async {
    try {
      final googleSignIn = GoogleSignIn();
      final account = await googleSignIn.signIn();
      final authentication = await account.authentication;
      FirebaseUser firebaseUser;
      if (authentication.accessToken != null) {
        final credential = GoogleAuthProvider.getCredential(
            idToken: authentication.idToken,
            accessToken: authentication.accessToken);
        await auth
            .signInWithCredential(credential)
            .then((usuarioLogado) => firebaseUser = usuarioLogado.user);
      }
      return ResponseBuilder.sucesso<FirebaseUser>(
        objeto: firebaseUser,
        mensagem: "Logado com sucesso ${firebaseUser.displayName}",
      );
    } on Exception catch (e) {
      return ResponseBuilder.falha(
          objeto: e,
          mensagem: "Falha ao logar com google -----> ${e.toString()}");
    }
  }

  @override
  Future<ResponseDefault> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<ResponseDefault> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<ResponseDefault> registerEmailPassword() {
    // TODO: implement registerEmailPassword
    throw UnimplementedError();
  }
}
