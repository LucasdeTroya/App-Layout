import 'package:flutter/material.dart';

void main() {
  runApp(const Minhaclasse());
}

class Minhaclasse extends StatelessWidget {
  const Minhaclasse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Programa Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 213, 222, 47)),
        useMaterial3: true,
      ),
      home: const MinhaPrimeiraPagina(titulo: 'Programa Layout'),
    );
  }
}

class MinhaPrimeiraPagina extends StatefulWidget {
  final String? titulo;
  
  const MinhaPrimeiraPagina({
    super.key, 
    required this.titulo,
  });

  @override
  State<MinhaPrimeiraPagina> createState() => _MinhaPrimeiraPaginaState();
}

class _MinhaPrimeiraPaginaState extends State<MinhaPrimeiraPagina> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo ?? ''),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(26.0),
            color: const Color.fromARGB(255, 222, 105, 240),
            child: const Text(
              'Cabeçalho Superior',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 105.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 255, 0, 0).withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(32.0),
                child: const Center(
                  child: Text(
                    'Meu Aplicativo',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(26.0),
            color: Color.fromARGB(255, 222, 105, 240),
            child: const Text(
              'Cabeçalho Inferior',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: const Color(0xFFADD8E6), // Azul claro
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked, // Posiciona o botão no canto inferior direito
    );
  }
}
