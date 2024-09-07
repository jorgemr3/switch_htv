import 'package:flutter/material.dart';
import 'package:switch_htv/PrintReport.dart';
import 'test.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 143, 194),
        title: const Text('Bienvenido!'),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 500,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 51, 88, 93),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 400,
                  height: 25,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 41, 101, 138),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Center(
                    child: Text('Placeholder'), 
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrintReport(),
                      ),
                    );
                  },
                  child: const Text('Generar reportes'),
                ),
              ),
              const SizedBox(height: 20,),

              ElevatedButton(
                onPressed: (){
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Test_firebase(),
                      ),
                    );
              }, child: const Text("TEST FIREBASE"))
            ],
          ),
        ),
      ),
    );
  }
}
