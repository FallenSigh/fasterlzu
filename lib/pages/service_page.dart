import 'package:fasterlzu/core/app/models/app_model.dart';
import 'package:fasterlzu/core/app/providers/app_provider.dart';
import 'package:fasterlzu/core/auth/repositories/auth_repository.dart';
import 'package:fasterlzu/core/easytong/repositories/easytong_repository.dart';
import 'package:fasterlzu/core/webview/providers/webview_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ServicePage extends ConsumerStatefulWidget {
  const ServicePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ServicePageState();

}

class _ServicePageState extends ConsumerState<ServicePage> {
  Future<void> _refreshApps() async {
    ref.read(appProvider.notifier).refresh();
  }
  
  @override
  Widget build(BuildContext context) {
    final appState = ref.watch(appProvider);
    
    if (appState.apps == null) return Scaffold();

    final appTypes = appState.apps;
    final allServices = appTypes!
      .map((app) => app.service_infos ?? []) // 提取 service_infos，若为空则用空列表代替
      .expand((infos) => infos) // 展开嵌套列表
      .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('应用列表'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => _refreshApps(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 每行4个
            crossAxisSpacing: 15,
            mainAxisSpacing: 20,
            childAspectRatio: 0.8, // 调整宽高比
          ),
          itemCount: allServices.length,
          itemBuilder: (context, index) => _ServiceItem(
            service: allServices[index],
            onTap: () => _handleItemTap(allServices[index]),
          ),
        ),
      ),
    );
  }

  void _handleItemTap(ServiceInfo service) async {
    final authRepository = ref.read(authRepositoryProvider);
    // final loginToken = await authRepository.loginToken;
    // final gatewayToken = await authRepository.gatewayToken;
    final st = await authRepository.getSt(service.service_info_id!);
    final etToken = await ref.read(easytongRepositoryProvider).getEtToken();
    final personID = authRepository.currentUser;
    
    ref.read(webViewControllerProvider.notifier).reset();
    final controller = ref.watch(webViewControllerProvider);
    
    controller.setNavigationDelegate(NavigationDelegate(
      onPageStarted: (url) async {
        await controller.runJavaScript(
          'document.cookie = "vehEticket_token=$etToken"');
      },
      onNavigationRequest: createNavigationHandler(controller)
    ));

    String url = service.h5_url ?? '';
    url = '$url?PersonID=$personID&st=$st&ticket=$st';

    controller.loadRequest(Uri.parse(url));

    context.push('/webview');
  }
}

class _ServiceItem extends StatelessWidget {
  final ServiceInfo service;
  final VoidCallback onTap;

  const _ServiceItem({
    required this.service,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // 图标容器
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: service.app_icon_url?.isNotEmpty == true
                  ? Image.network(
                      service.app_icon_url!,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => const Icon(Icons.error),
                    )
                  : const Icon(Icons.apps, size: 30),
            ),
          ),
          const SizedBox(height: 8),
          // 应用名称
          Text(
            service.service_name ?? '未知应用',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

