import 'package:test_task_htl/domain/entities.dart';
import 'package:test_task_htl/domain/params.dart';

import '../domain/repo.dart';
import 'data_sources/data_sources.dart';

class HtlRepo implements HtlRepoAbs {
  final ServerAPI serverApi;

  const HtlRepo({required this.serverApi});

  @override
  Future<Hotel> getHotel(GetHotelParams params) async =>
      (await serverApi.getHotel(params.id)).toEntity();

  @override
  Future<List<Room>> getRoom(GetRoomsParams params) async =>
      (await serverApi.getRooms(params.id)).toEntity();

  @override
  Future<Booking> getBooking(GetBookingParams params) async =>
      (await serverApi.getBooking(params.id)).toEntity();
}
