import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Cor de fundo suave do Scaffold

      body: Center(
        // O SingleChildScrollView permite rolar a tela se o teclado abrir
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1. Logo
              Image.asset(
                'assets/icon_flutter.png',
                width: 100.0,
                height: 100.0,
                // Dica: se a imagem der erro por não existir ainda,
                // o Flutter mostrará um quadrado com aviso no lugar dela.
              ),
              const SizedBox(height: 16.0), // Respiro vertical
              // 2. Título de Boas-vindas
              const Text(
                'Bem-vindo ao DevConnect',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 32.0),

              // 3. O "Cartão" agrupando os campos
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      // por causa do withOpacity, precisamos ignorar o aviso de deprecated_member_use
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.0,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                // Uma Column interna para organizar os itens dentro do Container
                child: Column(
                  children: [
                    // Campo de Nome
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Nome completo',
                        border:
                            OutlineInputBorder(), // Cria a borda ao redor do campo
                        prefixIcon: Icon(Icons.person), // Ícone dentro do campo
                      ),
                    ),
                    const SizedBox(height: 16.0),

                    // Campo de E-mail
                    const TextField(
                      keyboardType: TextInputType
                          .emailAddress, // Mostra o teclado com "@"
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(height: 24.0),

                    // 4. Linha com Ícone e Texto
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.security, color: Colors.green, size: 20.0),
                        SizedBox(width: 8.0), // Espaço entre ícone e texto
                        Text(
                          'Seus dados estão seguros',
                          style: TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),

              // 5. Botão de Criar Conta
              SizedBox(
                width: double
                    .infinity, // Força o botão a ocupar toda a largura disponível
                height: 50.0, // Deixa o botão mais alto e fácil de clicar
                child: ElevatedButton(
                  onPressed: () {
                    print('Botão clicado! Lógica de salvar entraria aqui.');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Criar Conta',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
