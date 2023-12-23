import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instax/firebase_options.dart';
import 'package:user_repository/user_repository.dart';
import 'app.dart';
import 'simple_bloc_observer.dart';

void main() async {
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
	Bloc.observer = SimpleBlocObserver();
	SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MainApp(FirebaseUserRepository()));
}
