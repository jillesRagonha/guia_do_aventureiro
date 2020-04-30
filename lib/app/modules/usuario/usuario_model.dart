class UsuarioModel {
  String nome;
  String email;
  String senha;
  String telefone;

  UsuarioModel({this.nome, this.email, this.senha, this.telefone});

  @override
  String toString() {
    return 'Usuario = {nome: $nome, email: $email, senha: $senha, telefone: $telefone}';
  }
}
