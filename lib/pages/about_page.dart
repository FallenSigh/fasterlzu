import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  late Future<PackageInfo> _packageInfo;
  static const String repo = 'https://github.com/fallensigh/fasterlzu';
  static const String what_can_i_say = '开发 FasterLZU 的初衷是为了解决我在使用兰州大学官方App时遇到的两个痛点：'
      '\n1. 课表加载速度过慢'
      '\n2. 校园卡界面响应迟缓'
      '\n我希望通过这款软件能够有效解决这些痛点，提升大家的使用体验。这也是我第一次开发移动端应用，因此在实现过程中可能存在一些不足之处。如果你发现任何问题，欢迎通过 GitHub 提交 Issues 或 Pull Requests，或者直接通过邮箱与我联系：fallensigh@gmail.com';

  @override
  void initState() {
    super.initState();
    _packageInfo = PackageInfo.fromPlatform(); // 获取版本信息
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('关于 FasterLZU'),
      ),
      body: FutureBuilder<PackageInfo>(
        future: _packageInfo,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              PackageInfo packageInfo = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'FasterLZU',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '版本号: ${packageInfo.version}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '开发者有话说',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      what_can_i_say,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '开源仓库',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () => _launchURL(repo),
                      child: const Text(
                        repo,
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'CopyRight 2025 FallenSigh. 保留所有权利。',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: Text('获取应用信息失败'));
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  // 打开链接
  void _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw '无法打开链接: $url';
    }
  }
}
