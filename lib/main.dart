import 'package:flutter/material.dart';
import 'app_router.dart';

void main() {
  runApp(RCPApp());
}

class RCPApp extends StatelessWidget {
  const RCPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'RCP Neonatal',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
