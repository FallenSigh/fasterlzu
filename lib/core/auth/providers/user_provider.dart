import 'package:fasterlzu/core/storage/userinfo_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider = Provider((ref) {
  return ref.watch(userInfoStorageProvider);
});