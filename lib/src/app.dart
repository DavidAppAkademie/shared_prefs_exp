import 'package:flutter/material.dart';
import 'package:shared_prefs_exp/src/data/database_repository.dart';
import 'package:shared_prefs_exp/src/features/presentation/main_screen.dart';

class App extends StatelessWidget {
  final DatabaseRepository db;
  const App({super.key, required this.db});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(db: db),
    );
  }
}
