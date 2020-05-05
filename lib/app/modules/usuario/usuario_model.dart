class UsuarioModel {
  String nome;
  String email;
  String senha;
  String telefone;
  String foto;

  UsuarioModel({this.nome, this.email, this.senha, this.telefone, this.foto});

  @override
  String toString() {
    return 'Usuario = {nome: $nome, email: $email, senha: $senha, telefone: $telefone}';
  }
}
