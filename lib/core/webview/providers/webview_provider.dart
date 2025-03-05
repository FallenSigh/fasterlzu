import 'package:fasterlzu/app_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

final webViewControllerProvider = StateNotifierProvider<WebViewControllerNotifier, WebViewController>((ref) {
  return WebViewControllerNotifier();
});

class WebViewControllerNotifier extends StateNotifier<WebViewController> {
  WebViewControllerNotifier()
      : super(WebViewController()
          ..setUserAgent(AppConfig.UA)
          ..setJavaScriptMode(JavaScriptMode.unrestricted));

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

  Future<String?> getTitle() async {
    return await state.getTitle();
  }

  Future<String?> getCurrentUrl() async {
    return await state.currentUrl();
  }
}