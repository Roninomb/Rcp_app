import 'package:flutter/material.dart';

class ResultadoScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const ResultadoScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final double fuerza = data['fuerza'] ?? 0;
    final int pulsos = data['pulsos'] ?? 0;
    final bool ritmo = data['ritmo'] ?? false;

    String ritmoTexto;
    if (ritmo) {
      ritmoTexto = 'correcto';
    } else {
      ritmoTexto = 'incorrecto';
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Resultado del entrenamiento')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fuerza promedio: $fuerza N'),
            Text('Pulsos promedio: $pulsos bpm'),
            Text('Ritmo: $ritmoTexto'),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Volver al inicio'),
            )
          ],
        ),
      ),
    );
  }
}