import 'package:flutter/material.dart';

import 'core/services/shared_preferences_singleton.dart';
import 'fruits_hub.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const FruitsHub());
}
