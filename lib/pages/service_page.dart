import 'package:fasterlzu/core/auth/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ServicePage extends ConsumerStatefulWidget {
  const ServicePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ServicePageState();

}

class _ServicePageState extends ConsumerState<ServicePage> {
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);
    
    return Scaffold();
  }
  
}