import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/models.dart';

part 'data_sources.g.dart';

@RestApi()
abstract class ServerAPI {
  factory ServerAPI(Dio dio, {String baseUrl}) = _ServerAPI;

  @GET('/{id}')
  Future<HotelModel> getHotel(@Path() String id);

  @GET('/{id}')
  Future<ListRoomsModel> getRooms(@Path() String id);

  @GET('/{id}')
  Future<BookingModel> getBooking(@Path() String id);
}
