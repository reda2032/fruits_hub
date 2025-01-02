import 'package:flutter/material.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/fruit_hub.dart';

void main() async {
  await Prefs.init();
  runApp(const FruitHub());
}
