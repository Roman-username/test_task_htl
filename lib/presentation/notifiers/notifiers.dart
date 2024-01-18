import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities.dart';
import '../../domain/params.dart';
import '../../injection_container.dart';

part 'notifiers.g.dart';

final nullParamsException = Exception('Параметры не созданы');

@Riverpod(keepAlive: true)
Future<Hotel> hotel(HotelRef ref) async {
  final useCase = ref.watch(getHotelUseCaseProvider);
  final params = ref.watch(getHotelParamsNotifierProvider);
  return await useCase(params);
}

@Riverpod(keepAlive: true)
class GetHotelParamsNotifier extends _$GetHotelParamsNotifier {
  @override
  GetHotelParams build() =>
      GetHotelParams(id: '75000507-da9a-43f8-a618-df698ea7176d');

  set id(String id) => state = GetHotelParams(id: id);
}

@riverpod
Future<List<Room>> rooms(RoomsRef ref) async {
  final useCase = ref.watch(getRoomsUseCaseProvider);
  final params = ref.watch(getRoomsParamsNotifierProvider);
  if (params == null) throw nullParamsException;
  return await useCase(params);
}

@Riverpod(keepAlive: true)
class GetRoomsParamsNotifier extends _$GetRoomsParamsNotifier {
  @override
  GetRoomsParams? build() => null;

  set id(String id) => state = GetRoomsParams(id: id);
}

@riverpod
Future<Booking> booking(BookingRef ref) async {
  final useCase = ref.watch(getBookingUseCaseProvider);
  final params = ref.watch(getBookingParamsNotifierProvider);
  if (params == null) throw nullParamsException;
  return await useCase(params);
}

@Riverpod(keepAlive: true)
class GetBookingParamsNotifier extends _$GetBookingParamsNotifier {
  @override
  GetBookingParams? build() => null;

  set id(String id) => state = GetBookingParams(id: id);
}
