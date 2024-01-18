abstract class Params {}

class NoParams implements Params {}

class PathParams implements Params {
  final String id;

  const PathParams({required this.id});
}

class GetHotelParams extends PathParams {
  GetHotelParams({required super.id});
}

class GetRoomsParams extends PathParams {
  GetRoomsParams({required super.id});
}

class GetBookingParams extends PathParams {
  GetBookingParams({required super.id});
}
