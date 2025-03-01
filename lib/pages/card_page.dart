import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/app/models/app_model.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:fasterlzu/core/webview/providers/webview_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fasterlzu/core/app/repositories/app_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:fasterlzu/core/app/providers/card_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CardPage extends ConsumerStatefulWidget {
  const CardPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CardPageState();
}

class _CardPageState extends ConsumerState<CardPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _showQRCode() async {
    final qrCode = await ref.read(cardProvider.notifier).getQRCode();
    if (qrCode != null && mounted && qrCode.code == 1) {
      bool isPolling = true;
      final orderStatusNotifier = ValueNotifier<GetOrderByCodeResponse?>(null);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('校园卡二维码'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('授权码: ${qrCode.authNum}'),
              const SizedBox(height: 16),
              if (qrCode.qRCode != null)
                QrImageView(
                  data: qrCode.qRCode!,
                  version: QrVersions.auto,
                  size: 200.0,
                ),
              const SizedBox(height: 16),
              ValueListenableBuilder<GetOrderByCodeResponse?>(
                valueListenable: orderStatusNotifier,
                builder: (context, orderStatus, child) {
                  if (orderStatus == null) return const SizedBox.shrink();
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("交易状态: ${orderStatus.status ?? ''}"),
                      if (orderStatus.dealTime != null)
                        Text('交易时间: ${orderStatus.dealTime}'),
                      if (orderStatus.needMoney != null)
                        Text('交易金额: ${orderStatus.needMoney}元'),
                      if (orderStatus.realMoney != null)
                        Text('实付金额: ${orderStatus.realMoney}元'),
                    ],
                  );
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                isPolling = false;
                ref.read(cardProvider.notifier).refresh();
                Navigator.of(context).pop();
              },
              child: const Text('关闭'),
            ),
          ],
        ),
      );

      // 开始轮询订单状态
      while (mounted && isPolling) {
        try {
          final response = await ref
              .read(cardProvider.notifier)
              .getOrderByCode(qrCode.authNum!);
          if (response != null && mounted) {
            orderStatusNotifier.value = response;
          }
        } catch (e) {
          log.e('查询订单状态失败: $e');
        }
        await Future.delayed(const Duration(seconds: 1));
      }
    }
  }

  void _loadEasyTongApp() async {
    final controller = ref.read(webViewControllerProvider);
    final accNum = ref.read(appRepositoryProvider).accNum ?? '';
    final token = ref.read(appRepositoryProvider).etToken ?? '';

    controller.setNavigationDelegate(NavigationDelegate(
      onPageFinished: (url) async {
        await controller.runJavaScript("window.localStorage.setItem('AccNum', $accNum);");
        await controller.runJavaScript('document.cookie = "etToken=$token; path=/;"');
      },
      onNavigationRequest: (NavigationRequest request) async {
        log.d(request.url);
        if (request.url.startsWith("https://wx.tenpay.com/cgi-bin/mmpayweb-bin/checkmweb")) {
          controller.loadRequest(Uri.parse(request.url),
          headers: {
            "Referer": "https://paygray.xiaofubao.com",
          });
          return NavigationDecision.prevent;
        } else if (request.url.startsWith("weixin://") || request.url.startsWith("alipays://")) {
          try {
            await launchUrl(Uri.parse(request.url),
                mode: LaunchMode.externalApplication);
          } catch (e) {
            log.e("无法打开微信或支付宝: ${e.toString()}");
          }
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ));
    controller.loadRequest(Uri.parse(AppConfig.EasyTongWebApp));
  }

  @override
  Widget build(BuildContext context) {
    final cardState = ref.watch(cardProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('校园卡'),
        actions: [
          IconButton(onPressed: () {
            _loadEasyTongApp();
            context.push('/webview');
          }, icon: Icon(Icons.open_in_browser)),
          IconButton(
              onPressed: () {
                ref.read(cardProvider.notifier).refresh();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(cardProvider.notifier).refresh(),
        child: cardState.when(
          data: (walletInfo) {
            final schoolCard = walletInfo?.wallets.firstWhere(
              (wallet) => wallet.walletName == '校园卡',
              orElse: () => WalletInfo(
                cardName: '',
                cardAccNum: '',
                unit: '元',
                walletMoney: '0.00',
                walletName: '校园卡',
                isWithdraw: '0',
                moneyMax: '0.00',
                monTemp: '0.00',
                monCard: '0.00',
                walletNum: '1',
              ),
            );

            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '当前余额',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${schoolCard?.walletMoney ?? "0.00"} ${schoolCard?.unit ?? "元"}',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: _showQRCode,
                            child: const Text('显示付款二维码'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(
            child: Text('加载失败: $error'),
          ),
        ),
      ),
    );
  }
}
