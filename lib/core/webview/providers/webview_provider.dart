import 'package:fasterlzu/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

final webViewControllerProvider = StateNotifierProvider<WebViewControllerNotifier, WebViewController>((ref) {
  final params = AndroidWebViewControllerCreationParams();

  return WebViewControllerNotifier(params);
});

class WebViewControllerNotifier extends StateNotifier<WebViewController> {
  final PlatformWebViewControllerCreationParams params;
  // 用于控制 WebView 组件重建的 Key
  UniqueKey _webViewKey = UniqueKey();

  UniqueKey get webViewKey => _webViewKey;
  
  WebViewControllerNotifier(this.params)
      : super(WebViewController.fromPlatformCreationParams(params) 
          ..setUserAgent(AppConfig.UA)
          ..setJavaScriptMode(JavaScriptMode.unrestricted));

  Future<void> resetWebView() async {
    _webViewKey = UniqueKey();
    state = WebViewController.fromPlatformCreationParams(params)
      ..setUserAgent(AppConfig.UA)
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  void loadUrl(String url) {
    state.loadRequest(Uri.parse(url));
  }

  void reload() {
    state.reload();
  }

  void goBack() {
    state.goBack();
  }

  void goForward() {
    state.goForward();
  }

  Future<bool> canGoBack() async {
    return await state.canGoBack();
  }

  Future<bool> canGoForward() async {
    return await state.canGoForward();
  }
}