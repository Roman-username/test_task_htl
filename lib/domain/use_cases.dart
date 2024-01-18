import 'entities.dart';
import 'params.dart';
import 'repo.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

class GetHotelUseCase implements UseCase<Hotel, GetHotelParams> {
  final HtlRepoAbs repo;

  GetHotelUseCase(this.repo);

  @override
  Future<Hotel> call(GetHotelParams params) async =>
      await repo.getHotel(params);
}

class GetRoomsUseCase implements UseCase<List<Room>, GetRoomsParams> {
  final HtlRepoAbs repo;

  GetRoomsUseCase(this.repo);

  @override
  Future<List<Room>> call(GetRoomsParams params) async =>
      await repo.getRoom(params);
}

class GetBookingUseCase implements UseCase<Booking, GetBookingParams> {
  final HtlRepoAbs repo;

  GetBookingUseCase(this.repo);

  @override
  Future<Booking> call(GetBookingParams params) async =>
      await repo.getBooking(params);
}
