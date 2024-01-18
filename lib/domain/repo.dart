import 'entities.dart';
import 'params.dart';

abstract class HtlRepoAbs {
  Future<Hotel> getHotel(GetHotelParams params);

  Future<List<Room>> getRoom(GetRoomsParams params);

  Future<Booking> getBooking(GetBookingParams params);
}
