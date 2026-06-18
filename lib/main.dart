import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final ScrollController _scrollController = ScrollController();

  // As 4 chaves necessárias para a rolagem automática
  final GlobalKey _secaoHistoriaKey = GlobalKey();
  final GlobalKey _secaoFolcloreKey = GlobalKey();
  final GlobalKey _secaoLugaresKey = GlobalKey();
  final GlobalKey _secaoRapazesKey = GlobalKey();

  void _rolarParaSecao(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(20), 
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 128, 54, 54),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 4, 25, 71).withValues(alpha: 0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Center(
                  child: SizedBox(
                    width: 1000,
                    child: Column(
                      spacing: 25, 
                      children: <Widget>[
                        const Text(
                          'Conheça um pouco sobre a nação Chilena!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 240, 212, 212),
                            fontSize: 40,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 4.0,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        
                        // Menu Principal de Botões (4 itens)
                        _construirCardImagem('img/historia.jpeg'),
                        ElevatedButton(
                          onPressed: () => _rolarParaSecao(_secaoHistoriaKey),
                          style: _estiloBotao(),
                          child: Text('História', style: _estiloTextoBotao()),
                        ),

                        _construirCardImagem('img/cultura.jpg'),
                        ElevatedButton(
                          onPressed: () => _rolarParaSecao(_secaoFolcloreKey),
                          style: _estiloBotao(),
                          child: Text('Folclore', style: _estiloTextoBotao()),
                        ),

                        _construirCardImagem('img/deserto.jpeg'),
                        ElevatedButton(
                          onPressed: () => _rolarParaSecao(_secaoLugaresKey),
                          style: _estiloBotao(),
                          child: Text('Lugares', style: _estiloTextoBotao()),
                        ),

                        _construirCardImagem('img/deserto.jpeg'),
                        ElevatedButton(
                          onPressed: () => _rolarParaSecao(_secaoRapazesKey),
                          style: _estiloBotao(),
                          child: Text('Rapazes Latinos', style: _estiloTextoBotao()),
                        ),
                        
                        const Divider(height: 50, color: Colors.grey),

                        // ==================== SEÇÕES DE CONTEÚDO DETALHADO ====================

                        // Seção História
                        Column(
                          key: _secaoHistoriaKey,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 12,
                          children: [
                            const Text('História do Chile', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                            const Text(
                              'O Chile tem uma história rica que remonta às culturas pré-colombianas, como os Incas e os Mapuches. Tornou-se independente da Espanha em 1818, sob a liderança di Bernardo O\'Higgins.',
                              style: TextStyle(fontSize: 14, color: Colors.white70),
                            ),
                            _construirCardImagem('img/historia.jpeg'), 
                            const Text(
                              'A transição para a democracia no final do século XX moldou o Chile moderno, tornando-o uma das economias mais estáveis e desenvolvidas da América Latina.',
                              style: TextStyle(fontSize: 14, color: Colors.white70),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        // Seção Folclore
                        Column(
                          key: _secaoFolcloreKey,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 12,
                          children: [
                            const Text('Folclore e Tradições', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                            const Text(
                              'O folclore chileno é marcado pela Cueca, a dança nacional oficial. Também há ricas mitologias na ilha de Chiloé, repletas de lendas sobre navios fantasma e criaturas mágicas.',
                              style: TextStyle(fontSize: 14, color: Colors.white70),
                            ),
                            _construirCardImagem('img/cultura.jpg'),
                            const Text(
                              'As festividades da "Fiestas Patrias" em setembro reúnem música, rodeios tradicionais e comidas típicas como as famosas empanadas chilenas.',
                              style: TextStyle(fontSize: 14, color: Colors.white70),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        // Seção Lugares
                        Column(
                          key: _secaoLugaresKey,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 12,
                          children: [
                            const Text('Lugares Incríveis', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                            const Text(
                              'Do Deserto do Atacama no norte até as geleiras da Patagônia no sul, o Chile oferece paisagens contrastantes. Destaque para Santiago, a capital moderna cercada pela Cordilheira dos Andes.',
                              style: TextStyle(fontSize: 14, color: Colors.white70),
                            ),
                            _construirCardImagem('img/deserto.jpeg'),
                            const Text(
                              'A misteriosa Ilha de Páscoa e as vinícolas do Vale Central também são destinos imperdíveis que atraem milhões de turistas todos os anos.',
                              style: TextStyle(fontSize: 14, color: Colors.white70),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        // Seção Rapazes Latinos (Com a Homenagem)
                        Column(
                          key: _secaoRapazesKey,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 12,
                          children: [
                            const Text('Rapazes Latinos', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                            const Text(
                              'O nome do projeto é inspirado pelos membros que estão no grupo desenvolvendo o projeto. O grupo é composto pelo líder Rihan de Jesus, pela programadora Maria Caetano Rizzo e pelo designer Arthur Paixão.',
                            style:  TextStyle(fontSize: 14, color: Colors.white70),
                          ),
                          _construirCardImagem('img/deserto.jpeg'),
                          Text(
                            'O  projeto é uma homenagem a um indiano do YouTube que sempre salva a equipe ajudando a codar no Flutter.',
                            style: const TextStyle(fontSize: 14, color: Colors.white70),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      )
    );
  }

  Widget _construirCardImagem(String path) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withValues(alpha: 0.15),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          path,
          width: double.infinity,
          height: 170,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  ButtonStyle _estiloBotao() {
    return ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 44, 72, 199),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }

  TextStyle _estiloTextoBotao() {
    return const TextStyle(
      fontFamily: 'Cinzel',
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
  }
}
