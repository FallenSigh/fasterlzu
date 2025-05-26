import 'package:fasterlzu/core/easytong/models/easytong_model.dart';
import 'package:fasterlzu/core/easytong/repositories/easytong_repository.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cardProvider = StateNotifierProvider<CardNotifier, AsyncValue<GetWalletMoneyResponse?>>((ref) {
  return CardNotifier(repository: ref.watch(easytongRepositoryProvider));
});

class CardNotifier extends StateNotifier<AsyncValue<GetWalletMoneyResponse?>> {
  final EasytongRepository _repository;

  CardNotifier({required EasytongRepository repository})
      : _repository = repository,
        super(const AsyncValue.loading()) {
    _init();
  }

  Future<void> _init() async {
    log.t("[CardNotifier] initing");
    state = const AsyncValue.loading();
    try {
      await _repository.getAccInfo();
      final walletInfo = await _repository.getWalletMoney();
      state = AsyncValue.data(walletInfo);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    try {
      await _repository.refresh();
      await _repository.getAccInfo();
      final walletInfo = await _repository.getWalletMoney();
      state = AsyncValue.data(walletInfo);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<GetH5QRCodeResponse?> getQRCode() async {
    await _repository.getAccInfo();
    return await _repository.getH5QRCode();
  }

  Future<GetOrderByCodeResponse?> getOrderByCode(String authNum) async {
    return await _repository.getOrderByCode(authNum);
  }
}