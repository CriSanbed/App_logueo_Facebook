import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:app_logueo_facebook/Bloc/bloc_user.dart';
import 'package:app_logueo_facebook/UI/Screen/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  //usando firebase_core
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'Login',
          home: Login(), //pantalla inicial en la app
          initialRoute: 'main',
          routes: {'main': (context) => Login()},
        ),
        bloc: BlocUser());
  }
}
