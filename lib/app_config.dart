class AppConfig {
  static const String aesKey = 'REMOVED_SECRET';
  static const String md5Key = 'REMOVED_SECRET';

  static const String appName = 'FasterLZU';
  static const String githubRepoUrl = 'https://github.com/fallensigh/fasterlzu';
  static const String giteeRepoUrl = 'https://gitee.com/fallensigh/fasterlzu';
  static const String githubApiUrl = 'https://api.github.com/repos/fallensigh/fasterlzu/releases/latest';
  static const String giteeApiUrl = 'https://gitee.com/api/v5/repos/fallensigh/fasterlzu/releases/latest';

  static const String appServiceBaseUrl = 'https://appservice.lzu.edu.cn';
  static const String appBaseUrl = 'http://app.lzu.edu.cn:8080';

  static const String UA = 'Mozilla/5.0 (Linux; Android 12; SM-S7110 Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.61 Mobile Safari/537.36 lzdx_ua JHZF_LZDXAPP';
  static const String EasyTongWebApp = 'http://app.lzu.edu.cn:8080/easytong_webapp/#/home/index';

  static Map<String, String> appServiceApis = {
    'login': '/api/eusp-unify-terminal/app-user/login',
    'logout': '/api/eusp-unify-terminal/app-user/logout',
    'schedule': '/apigw/lzu-teaching-research/kcb/getZdyCourse',
    'xlxx': '/apigw/lzu-teaching-research/kcb/getXlxx',
    'st': '/api/eusp-unify-terminal/app-user/getSt',
    'userInfo': '/api/eusp-unify-terminal/app-user/userInfo',
    'userImg': '/api/eusp-unify-terminal/app-user/userImg',
    'addSchedule': '/apigw/lzu-teaching-research/kcb/addorUpdateZdyKc',
    'delSchedule': '/apigw/lzu-teaching-research/kcb/deleZdyKc',
    'getSt': '/api/eusp-unify-terminal/app-user/getSt',
    'getGrszsyyy': '/api/eusp-terminal-management/syyysz/v2/getGrszsyyy',
    'getServiceInfoDetail': '/api/eusp-terminal-management/api/v2/getServiceInfoDetailByTerminalRole'
  };

  static Map<String, String> appApis = {
    'etToken': '/easytong_app/ExchangeEtToken',
    'GetAccInfo': '/easytong_app/GetAccInfo',
    'qrCode': '/easytong_app/getH5QRCode',
    'GetWalletMoney': '/easytong_app/GetWalletMoney',
    'GetOrderByCode': '/easytong_app/GetOrderByCode'
  };

  static Map<String, String> appHeaders = {
    'Host': 'app.lzu.edu.cn:8080',
    'User-Agent': UA
  };

  static Map<String, String> appServiceHeaders = {
    'User-Agent': UA,
    'Transfer-Encrypt': 'true',
    'Host': 'appservice.lzu.edu.cn',
    'Connection': 'Keep-Alive',
    'Content-Type': 'application/json;charset=UTF-8',
    'Accept-Encoding': 'gzip',
  };

  static const classTimes = ['1', '2', '3', '4', '中', '中2', '5', '6', '7', '8', '9', '10', '11', '12'];
  static const classStartTimes = ['08:30', '09:25', '10:30', '11:25', '12:30', '13:25', '14:30', '15:25', '16:30', '17:25', '19:00', '19:55', '21:00', '21:55'];
  static const classEndTimes   = ['09:15', '10:10', '11:15', '12:10', '13:15', '14:00', '15:15', '16:10', '17:15', '18:10', '19:45', '20:40', '21:45', '22:40'];

  static List<String> formattedClassTimes() {
    return classTimes.asMap().entries.map((entry){
      final index = entry.key;
      final time = entry.value;
      return '${time.padLeft(4)}\n${AppConfig.classStartTimes[index]}\n${AppConfig.classEndTimes[index]}';
    }).toList();
  }
}
