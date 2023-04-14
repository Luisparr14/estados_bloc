import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados_bloc/bloc/user_bloc.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.userExist
              ? const UserInfomation()
              : const Center(
                  child: Text('There arent an user'),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, 'screen2'),
          child: const Icon(Icons.ac_unit)),
    );
  }
}

class UserInfomation extends StatelessWidget {
  const UserInfomation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(9),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Divider(),
          ListTile(title: Text('Nombre')),
          ListTile(title: Text('Edad')),
          Text('Profesiones',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Divider(),
          ListTile(title: Text('Profesion')),
          ListTile(title: Text('Profesion')),
        ],
      ),
    );
  }
}
