import 'package:fasterlzu/core/auth/providers/auth_provider.dart';
import 'package:fasterlzu/core/auth/providers/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authStateProvider, (previous, next){
      if (next is Authenticated) {
        context.pop();
      }
    });
    
    final authState = ref.watch(authStateProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('登录')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: '学号'),
                validator: (value) => value?.isEmpty ?? true ? '请输入学号' : null,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: '密码'),
                validator: (value) => value?.isEmpty ?? true ? '请输入密码' : null,
              ),
              const SizedBox(height: 20),
              _buildLoginButton(authState, ref),
              if (authState is Error)
                Text(authState.message, style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(AuthState state, WidgetRef ref) {
    return state is Loading
        ? const CircularProgressIndicator()
        : ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          ref.read(authStateProvider.notifier).login(
            _usernameController.text,
            _passwordController.text,
          );
        }
      },
      child: const Text('登录'),
    );
  }
}