import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:fasterlzu/core/webview/providers/webview_provider.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class WebViewPage extends ConsumerStatefulWidget {
  const WebViewPage({super.key});

  @override
  ConsumerState<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends ConsumerState<WebViewPage> {
  // 记录上次返回时间,用于检测"快速连续返回"以退出 SPA 历史循环
  DateTime _lastBackTime = DateTime.fromMillisecondsSinceEpoch(0);
  // 应用会话内"再按一次退出"提示只显示一次
  static bool _exitHintShown = false;

  /// 浮空样式的轻提示(SnackBarBehavior.floating)
  void _showFloatingHint(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(milliseconds: 800),
      ));
  }

  Future<void> _handleBack(bool didPop) async {
    if (didPop) return;

    final now = DateTime.now();
    final controller = ref.read(webViewControllerProvider);
    final canGoBack = await controller.canGoBack();

    // 500ms 内连续按返回 = 用户明确想退出页面,提示后直接 pop
    if (now.difference(_lastBackTime).inMilliseconds < 500) {
      _showFloatingHint('正在退出页面...');
      if (mounted) context.pop();
      return;
    }
    _lastBackTime = now;

    if (canGoBack) {
      // 网页有历史:执行网页内后退
      await controller.goBack();
    } else if (!_exitHintShown) {
      // 网页历史到底:首次提示"再按一次退出"(每次启动应用仅一次)
      _exitHintShown = true;
      _showFloatingHint('再按一次返回键退出页面');
    } else {
      // 已提示过,直接退出
      if (mounted) context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    dynamic params;
    if (Platform.isAndroid) {
      params = AndroidWebViewWidgetCreationParams(
        controller:
            ref.watch(webViewControllerProvider).platform
                as AndroidWebViewController,
        displayWithHybridComposition: true,
      );
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, dynamic) => _handleBack(didPop),

      child: Scaffold(
        appBar: AppBar(),
        body: WebViewWidget.fromPlatformCreationParams(params: params),
      ),
    );
  }
}
