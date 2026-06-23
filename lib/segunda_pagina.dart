import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa do Chile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 128, 54, 54),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 4, 25, 71)
                    .withValues(alpha: 0.5),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Mapa do Chile',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 15),

              Image.asset(
                'img/mapa.jpg',
                height: 300,
              ),

              const SizedBox(height: 15),

              const Text(
                'O Chile está localizado na costa oeste da América do Sul. '
                'É um país conhecido por seu formato longo e estreito, estendendo-se por mais de 4.000 quilômetros entre a Cordilheira dos Andes e o Oceano Pacífico.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                'Santiago',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 15),

              Image.asset(
                'img/capital.jpg',
                height: 300,
              ),

              const SizedBox(height: 15),

              const Text(
                'Santiago é a capital e a maior cidade do Chile. '
                'Localizada em um vale cercado pela Cordilheira dos Andes, '
                'é o principal centro político, econômico e cultural do país.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Voltar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}