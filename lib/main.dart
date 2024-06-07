import 'package:flutter/material.dart';
import 'package:shared_prefs_exp/src/app.dart';
import 'package:shared_prefs_exp/src/data/database_repository.dart';
import 'package:shared_prefs_exp/src/data/shared_prefs_database.dart';

void main() {
  DatabaseRepository db = SharedPrefsDatabase();

  runApp(App(db: db));
}
