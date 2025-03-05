import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:fasterlzu/core/webview/providers/webview_provider.dart';

class WebViewPage extends ConsumerWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        body: WebViewWidget(
          controller: ref.watch(webViewControllerProvider),
        ),
      ),
    );
  }

}
