import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/services/shared_preferences_singleton.dart';
import 'firebase_options.dart';
import 'fruits_hub.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FruitsHub());
}
