import 'package:flutter/material.dart';
import 'package:shared_prefs_exp/src/data/database_repository.dart';

class MainScreen extends StatefulWidget {
  final DatabaseRepository db;
  const MainScreen({super.key, required this.db});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // State
  // ...
  String? firstName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OutlinedButton(
            onPressed: () async {
              await widget.db.storeName("Angi");
            },
            child: const Text("Speicher Vorname"),
          ),
          OutlinedButton(
            onPressed: () async {
              firstName = await widget.db.getNameFromStorage();
              setState(() {});
            },
            child: const Text("Lies Vorname aus Speicher"),
          ),
          Text(
            "Der Name ist: $firstName",
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
