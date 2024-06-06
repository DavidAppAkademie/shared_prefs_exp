import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

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
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              // SPEICHERN
              await prefs.setString("first", "Angi");
            },
            child: const Text("Speicher Vorname"),
          ),
          OutlinedButton(
            onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              // LESEN
              setState(() {
                firstName = prefs.getString("first");
              });
            },
            child: const Text("Lies Vorname aus Speicher"),
          ),
          Text("Der Name ist: $firstName",
              style: Theme.of(context).textTheme.displayMedium),
        ],
      ),
    );
  }
}
