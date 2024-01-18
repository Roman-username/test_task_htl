import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'data/data_sources/data_sources.dart';
import 'data/repo.dart';
import 'domain/use_cases.dart';

part 'injection_container.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) => Dio();

@Riverpod(keepAlive: true)
ServerAPI serverAPI(ServerAPIRef ref) {
  final dio = ref.watch(dioProvider);
  return ServerAPI(dio,
      baseUrl: kDebugMode ? 'https://run.mocky.io/v3/' : 'https://booking.com');
}

@Riverpod(keepAlive: true)
HtlRepo htlRepo(HtlRepoRef ref) {
  final serverApi = ref.watch(serverAPIProvider);
  return HtlRepo(serverApi: serverApi);
}

@Riverpod(keepAlive: true)
GetHotelUseCase getHotelUseCase(GetHotelUseCaseRef ref) {
  final repository = ref.watch(htlRepoProvider);
  return GetHotelUseCase(repository);
}

@Riverpod(keepAlive: true)
GetRoomsUseCase getRoomsUseCase(GetRoomsUseCaseRef ref) {
  final repository = ref.watch(htlRepoProvider);
  return GetRoomsUseCase(repository);
}

@Riverpod(keepAlive: true)
GetBookingUseCase getBookingUseCase(GetBookingUseCaseRef ref) {
  final repository = ref.watch(htlRepoProvider);
  return GetBookingUseCase(repository);
}
