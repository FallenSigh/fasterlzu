import 'package:fasterlzu/pages/card_page.dart';
import 'package:fasterlzu/pages/home_page.dart';
import 'package:fasterlzu/pages/login_page.dart';
import 'package:fasterlzu/pages/schedule_page.dart';
import 'package:fasterlzu/pages/webview_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref){
  return GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => HomePage()
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginPage()
      ),
      GoRoute(
          path: '/schedule',
          builder: (context, state) => SchedulePage()
      ),
      GoRoute(
          path: '/card',
          builder: (context, state) => CardPage()
      ),
      GoRoute(
          path: '/webview',
          builder: (context, state) => WebViewPage()
      )
    ]
  );
});