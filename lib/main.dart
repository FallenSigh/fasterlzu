import 'package:fasterlzu/core/logger/logger.dart';
import 'package:fasterlzu/core/router/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  var dir = await getApplicationDocumentsDirectory();
  log.i('Documents: ${dir.path}');
  Hive.init(dir.path);
  await Hive.openBox('userInfo');
  await Hive.openBox('schedule');
  await Hive.openBox('apps');

  FlutterNativeSplash.remove();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
      title: 'FasterLZU',
      debugShowCheckedModeBanner: false,
    );
  }
}
