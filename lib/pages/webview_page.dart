import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:fasterlzu/core/webview/providers/webview_provider.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class WebViewPage extends ConsumerWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    dynamic params;
    if (Platform.isAndroid) {
      params = AndroidWebViewWidgetCreationParams(
      controller: ref.watch(webViewControllerProvider).platform as AndroidWebViewController,
      displayWithHybridComposition: true
    );
    }

    final webViewKey = ref.watch(webViewControllerProvider.notifier).webViewKey;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, dynamic) async {
        if (didPop) return;

        final controller = ref.read(webViewControllerProvider);
        if (await controller.canGoBack()) {
          await controller.goBack();
        } else {
          context.pop();
        }
      },
      
      child: Scaffold(
        appBar: AppBar(),
        body: WebViewWidget.fromPlatformCreationParams(key:webViewKey, params: params)
      ),
    );
  }

}
