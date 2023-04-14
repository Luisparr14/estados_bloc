import 'package:estados_bloc/screens/screen1.dart';
import 'package:estados_bloc/screens/screen2.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      initialRoute: 'screen1',
      routes: {
        'screen1': (_) => const Screen1(),
        'screen2': (_) => const Screen2()
      },
    );
  }
}