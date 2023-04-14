import 'package:estados_bloc/bloc/user_bloc.dart';
import 'package:estados_bloc/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);
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
                  userBloc.add(ActivateUser(newUser));
                },
                color: Colors.blue,
                child: const Text('Set User')),
            MaterialButton(
                onPressed: () {
                  userBloc.add(ChangeUserAge(40));
                },
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
