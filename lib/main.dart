import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'YujiSyuku',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Guia Chileno'),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 240, 212, 212),
            fontSize: 45,
            fontFamily: 'YujiSyuku',
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0,
                color: Colors.black,
              ),
            ],
          ),
          centerTitle: true,
          //muda a cor do background
          backgroundColor: const Color.fromARGB(255, 44, 72, 199),
          toolbarHeight: 100,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30.0),
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.travel_explore),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.flight),
            )
          ],
        ),
        // 1. ADICIONADO O SINGLECHILDSCROLLVIEW AQUI NO CORPO PRINCIPAL
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Um pequeno espaçamento para desgrudar o container do AppBar
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.symmetric(vertical: 20), // Garante espaçamento interno ao rolar
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 4, 25, 71)
                          .withValues(alpha: 0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Center(
                  child: SizedBox(
                    width: 1000,
                    // 2. RETIRADO O HEIGHT FIXO para o container crescer conforme os itens rolam
                    child: Column(
                      spacing: 30, // Reduzido ligeiramente para harmonizar no scroll
                      children: <Widget>[
                        const Text(
                          'Conheça um pouco sobre a nação Chilena!',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                        
                        // Item 1
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'img/deserto.jpeg',
                            width: 750,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 44, 72, 199),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                          child: const Text(
                            'Lugares',
                            style: TextStyle(
                              fontFamily: 'Cinzel',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        // Item 2
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'img/historia.jpeg',
                            width: 750,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 44, 72, 199),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                          child: const Text(
                            'História',
                            style: TextStyle(
                              fontFamily: 'Cinzel',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        // Item 3
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'img/cultura.jpg',
                            width: 750,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 44, 72, 199),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                          child: const Text(
                            'Folclore',
                            style: TextStyle(
                              fontFamily: 'Cinzel',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        // Item 4
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'img/deserto.jpeg',
                            width: 750,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 44, 72, 199),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                          child: const Text(
                            'Rapazes Latinos',
                            style: TextStyle(
                              fontFamily: 'Cinzel',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )     
                      ],
                    ),
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