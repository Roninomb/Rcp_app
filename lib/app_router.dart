// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/home_screen.dart';
import 'screens/feedback_screen.dart';
import 'screens/resultado_screen.dart';
import 'screens/error_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/feedback',
      name: 'feedback',
      builder: (context, state) => FeedbackScreen(
        nombre:
            state.extra != null ? (state.extra as Map)['nombre'] : 'Invitado',
        email: state.extra != null ? (state.extra as Map)['email'] : '',
      ),
    ),
    GoRoute(
      path: '/resultado',
      name: 'resultado',
      builder: (context, state) => ResultadoScreen(data: state.extra),
    ),
  ],
  errorBuilder: (context, state) => ErrorScreen(error: state.error.toString()),
);
