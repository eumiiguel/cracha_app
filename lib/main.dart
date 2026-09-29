import 'package:flutter/material.dart';

void main() {
  runApp(const CrachaApp());
}

class CrachaApp extends StatelessWidget {
  const CrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Crachá do Desenvolvedor'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.black26, blurRadius: 8),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // ===============================================================
                // EXERCÍCIO 1 - FOTO DE PERFIL (INÍCIO)
                // CircleAvatar com raio 50 carregando imagem via NetworkImage
                // ===============================================================
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://github.com/eumiiguel.png',
                  ),
                ),
                // EXERCÍCIO 1 (FIM)

                const SizedBox(height: 15),

                const Text(
                  'Miguel de Almeida',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                // ===============================================================
                // EXERCÍCIO 2 - ESTILIZAÇÃO E BIOGRAFIA (INÍCIO)
                // Biografia em itálico com tamanho de fonte 14
                // ===============================================================
                const Text(
                  'Desenvolvedor Mobile Flutter / SENAI',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                // EXERCÍCIO 2 (FIM)

                const Divider(color: Colors.white38, height: 30),

                // ===============================================================
                // EXERCÍCIO 3 - ALINHAMENTO DE SKILLS (INÍCIO)
                // ===============================================================
                const Row(
                  children: [
                    Chip(label: Text('Dart')),
                  ],
                ),
                // EXERCÍCIO 3 (FIM)

                const SizedBox(height: 15),

                // ===============================================================
                // EXERCÍCIO 4 - COMPILAÇÃO E ESTRUTURA
                // ===============================================================
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ===============================================================
// EXERCÍCIO 5 - DECORAÇÃO E GRADIENTE
// ===============================================================
