import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rcp_app/screens/resultado_screen.dart';

void main() {
  testWidgets('ResultadoScreen muestra datos correctamente', (WidgetTester tester) async {
    // Datos simulados para pasar al widget
    final Map<String, dynamic> data = {
      'fuerza': 42.0,
      'pulsos': 115,
      'ritmo': true,
    };

    // Montamos el widget dentro de un MaterialApp
    await tester.pumpWidget(
      MaterialApp(
        home: ResultadoScreen(data: data),
      ),
    );

    // Verificamos que los datos aparezcan en pantalla
    expect(find.text('Fuerza promedio: 42.0 N'), findsOneWidget);
    expect(find.text('Pulsos promedio: 115 bpm'), findsOneWidget);
    expect(find.text('Ritmo: correcto'), findsOneWidget);
    expect(find.text('Volver al inicio'), findsOneWidget);
  });
}
