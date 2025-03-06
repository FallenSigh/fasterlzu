import 'package:fasterlzu/core/app/providers/app_provider.dart';
import 'package:fasterlzu/core/auth/providers/auth_provider.dart';
import 'package:fasterlzu/core/schedule/providers/schedule_provider.dart';
import 'package:fasterlzu/pages/main_page.dart';
import 'package:fasterlzu/pages/profile_page.dart';
import 'package:fasterlzu/pages/service_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  int _selectedIndex = 0;
  final List _pages = [
    MainPage(),
    ServicePage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    ref.read(authStateProvider);
    ref.read(scheduleProvider);
    ref.read(appProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.design_services),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ''
          ),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }

}