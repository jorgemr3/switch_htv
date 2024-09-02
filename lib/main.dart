import 'package:flutter/material.dart';
import 'package:switch_htv/print_reporte.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 60, 143, 194),
          title: const Text('Bienvenido!'),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            decoration:const BoxDecoration(
              color: Color.fromARGB(255, 51, 88, 93),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                 Padding(
                  padding: const EdgeInsets.all(20),
                  child: 
                  Container(
                    width: 400,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 41, 101, 138),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(
                      child: null
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context)=> print_reporte())
                      );
                     },
                    child: const Text('Generar reportes'),
                  ),
                ),
              
              ],
            ),
          )         
        ),
      ),
    );
  }
}
