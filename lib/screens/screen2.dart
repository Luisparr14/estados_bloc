import 'package:estados_bloc/bloc/user_bloc.dart';
import 'package:estados_bloc/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: () {
                  final newUser = User(
                      age: 24, name: 'Luis', professions: ['Frontend Dev']);
                  BlocProvider.of<UserBloc>(context, listen: false)
                      .add(ActivateUser(newUser));
                },
                color: Colors.blue,
                child: const Text('Set User')),
            MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                child: const Text('Set Age')),
            MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                child: const Text('Set Profesion')),
          ],
        ),
      ),
    );
  }
}
