import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:fasterlzu/core/router/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:releasehub_updater/autoupdater.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  var dir = await getApplicationDocumentsDirectory();
  log.i('Documents: ${dir.path}');
  Hive.init(dir.path);
  await Hive.openBox('userInfo');
  await Hive.openBox('schedule');
  await Hive.openBox('apps');
  await Hive.openBox('settings');

  // 初始化 ReleaseHub 自更新(checkOnStartup 关闭,由 MainPage 按设置触发)
  await AutoUpdater.initWithConfig(
    config: AutoUpdaterConfig.releaseHub(
      baseUrl: AppConfig.releasehubBaseUrl,
      projectSlug: AppConfig.releasehubProjectSlug,
      channel: AppConfig.releasehubChannel,
      httpHeaders: {'Authorization': 'Bearer ${AppConfig.releasehubApiKey}'},
      checkOnStartup: false,
    ),
  );

  FlutterNativeSplash.remove();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
      scaffoldMessengerKey: AutoUpdater.scaffoldMessengerKey,
      title: 'FasterLZU',
      debugShowCheckedModeBanner: false,
    );
  }
}
