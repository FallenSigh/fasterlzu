import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

final webViewControllerProvider = StateNotifierProvider<WebViewControllerNotifier, WebViewController>((ref) {
  final params = AndroidWebViewControllerCreationParams();

  return WebViewControllerNotifier(params);
});

NavigationRequestCallback createNavigationHandler(WebViewController controller) {
  return (NavigationRequest request) async {
    if (request.url.startsWith("https://wx.tenpay.com/cgi-bin/mmpayweb-bin/checkmweb")) {
      controller.loadRequest(Uri.parse(request.url), headers: {
        "Referer": "https://paygray.xiaofubao.com",
      });
      return NavigationDecision.prevent;
    } else if (request.url.startsWith("weixin://") || request.url.startsWith("alipays://")) {
      try {
        await launchUrl(Uri.parse(request.url), mode: LaunchMode.externalApplication);
      } catch (e) {
        log.e("无法打开微信或支付宝: ${e.toString()}");
      }
      return NavigationDecision.prevent;
    }
    return NavigationDecision.navigate;
  };
}


class WebViewControllerNotifier extends StateNotifier<WebViewController> {
  final PlatformWebViewControllerCreationParams params;
  
  WebViewControllerNotifier(this.params)
      : super(WebViewController.fromPlatformCreationParams(params) 
          ..setUserAgent(AppConfig.UA)
          ..setJavaScriptMode(JavaScriptMode.unrestricted));

  void reset() {
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