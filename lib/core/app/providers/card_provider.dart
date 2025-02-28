import 'package:fasterlzu/core/app/models/app_model.dart';
import 'package:fasterlzu/core/app/repositories/app_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cardProvider = StateNotifierProvider<CardNotifier, AsyncValue<GetWalletMoneyResponse?>>((ref) {
  return CardNotifier(repository: ref.watch(appRepositoryProvider));
});

class CardNotifier extends StateNotifier<AsyncValue<GetWalletMoneyResponse?>> {
  final AppRepository _repository;

  CardNotifier({required AppRepository repository})
      : _repository = repository,
        super(const AsyncValue.loading()) {
    _init();
  }

  Future<void> _init() async {
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