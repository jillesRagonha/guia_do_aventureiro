class UsuarioModel{
  final String nome;
  final String email;
  final String senha;
  final String telefone;

  UsuarioModel({this.nome, this.email, this.senha, this.telefone});

  @override
  String toString() {
    return 'Usuario = {nome: $nome, email: $email, senha: $senha, telefone: $telefone}';
  }





}