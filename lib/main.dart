import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }

  final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
        ),
      ),
      routes: [
        GoRoute(
          path: 'profile',
          builder: (_, __) => Scaffold(
            appBar: AppBar(
              title: const Text('Profile'),
            ),
          ),
        )
      ],
    ),
  ]);
}
