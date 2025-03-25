import 'dart:convert';

import 'package:fasterlzu/core/auth/providers/auth_provider.dart';
import 'package:fasterlzu/core/auth/providers/auth_state.dart';
import 'package:fasterlzu/core/auth/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    final userStorage = ref.watch(userProvider);
    final isLoggedIn = authState is Authenticated;

    final userInfo = isLoggedIn ? userStorage.getUserInfo() : null;
    final userImage = isLoggedIn ? userStorage.getUserImage() : null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          if (isLoggedIn)
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () => _showLogoutDialog(context, ref),
            ),
        ],
      ),
      body: GestureDetector(
        onTap: !isLoggedIn ? () => context.push('/login') : null,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildAvatar(userImage),
              const SizedBox(height: 20),
              _buildUserInfo(isLoggedIn, userInfo),
              Expanded(
                child: ListView(
                  children: [
                    if (authState is Authenticated) _buildServices(context),
                    _buildSettings(context)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServices(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        ListTile(
          leading: const Icon(Icons.table_chart),
          title: const Text('课表'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            context.push('/schedule');
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.credit_card),
          title: const Text('校园卡'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            context.push('/card');
          },
        ),
      ],
    );
  }

  Widget _buildSettings(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('设置'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            context.push('/settings');
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text('关于'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            context.push('/about');
          },
        ),
      ],
    );
  }

  Widget _buildAvatar(String? base64Image) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: base64Image != null
          ? MemoryImage(base64Decode(base64Image)) as ImageProvider
          : const AssetImage('assets/default_avatar.png'),
      child: base64Image == null ? const Icon(Icons.person, size: 50) : null,
    );
  }

  Widget _buildUserInfo(bool isLoggedIn, Map<String, dynamic>? userInfo) {
    if (!isLoggedIn) {
      return const Text(
        '点击登录',
        style: TextStyle(fontSize: 16),
      );
    }

    return Column(
      children: [
        Text(
          userInfo?['xm'] ?? '',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          '${userInfo?['xykh'] ?? ''}',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Future<void> _showLogoutDialog(BuildContext context, WidgetRef ref) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('退出登录'),
        content: const Text('确定要退出登录吗？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('确定'),
          ),
        ],
      ),
    );

    if (result == true) {
      ref.read(authStateProvider.notifier).logout();
    }
  }
}