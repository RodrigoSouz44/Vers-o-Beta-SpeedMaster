import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: const [
          Text('Informações do Usuário', style: TextStyle(fontSize: 20)),
          SizedBox(height: 16),
          ListTile(title: Text('Nome'), subtitle: Text('Usuário Teste')),
          ListTile(title: Text('Email'), subtitle: Text('teste@exemplo.com')),
          SizedBox(height: 20),
          ElevatedButton(onPressed: null, child: Text('Editar Perfil (desativado)')),
          SizedBox(height: 10),
          ElevatedButton(onPressed: null, child: Text('Excluir Conta (desativado)')),
        ],
      ),
    );
  }
}
