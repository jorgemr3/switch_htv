import 'package:flutter/material.dart';
//import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
//import 'package:printing/printing.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';

void main() {
  runApp(print_reporte());
}

class print_reporte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Generar PDF'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final pdf = pw.Document();

              pdf.addPage(
                pw.Page(
                  build: (pw.Context context) => pw.Center(
                    child: pw.Text('Hello World'),
                  ),
                ),
              );
              /*
              final output = await getTemporaryDirectory();
              final file = File("${output.path}\\example.pdf");
              await file.writeAsBytes(await pdf.save());

              print('PDF generado en ${file.path}');

              OpenFile.open(file.path);
              */
            },
            child: const Text('Generar PDF'),
          ),
        ),
      ),
    );
  }
}

/*
se genera un pdf con hola mundo, la parte donde se guarda está comentada 
para futuras revisiones

generar reporte en base al proceso que me dijo Rolando (soporte tecnico)

*/
