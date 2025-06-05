import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeedbackScreen extends StatelessWidget {
  final String nombre;
  final String email;

  const FeedbackScreen({super.key, required this.nombre, required this.email});

  @override
  Widget build(BuildContext context) {
    // Simulación estática de valores para MVP
    final double fuerza = 45.0; // newton
    final int pulsos = 110; // bpm
    final bool ritmoCorrecto = true;

    String ritmoTexto;
    if (ritmoCorrecto) {
      ritmoTexto = 'Correcto';
    // ignore: dead_code
    } else {
      ritmoTexto = 'Incorrecto';
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Entrenamiento en curso')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Nombre: $nombre'),
            Text('Email: $email'),
            const SizedBox(height: 24),
            Card(
              child: ListTile(
                title: const Text('Fuerza aplicada'),
                subtitle: Text('$fuerza N'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Frecuencia de pulsos'),
                subtitle: Text('$pulsos bpm'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Ritmo del metrónomo'),
                subtitle: Text(ritmoTexto),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                context.goNamed('resultado', extra: {
                  'fuerza': fuerza,
                  'pulsos': pulsos,
                  'ritmo': ritmoCorrecto,
                });
              },
              child: const Text('Finalizar y ver resultado'),
            )
          ],
        ),
      ),
    );
  }
}