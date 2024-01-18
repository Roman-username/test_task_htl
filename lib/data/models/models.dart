import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class HotelModel with _$HotelModel {
  const HotelModel._();

  @JsonSerializable(explicitToJson: true)
  const factory HotelModel({
    required int id,
    required String name,
    required String adress,
    @JsonKey(name: 'minimal_price') required int minimalPrice,
    @JsonKey(name: 'price_for_it') required String priceForIt,
    required int rating,
    @JsonKey(name: 'rating_name') required String ratingName,
    @JsonKey(name: 'image_urls') required List<String> imageUrls,
    @JsonKey(name: 'about_the_hotel') required AboutTheHotelModel aboutTheHotel,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);

  Hotel toEntity() => Hotel(
        id: id,
        name: name,
        adress: adress,
        minimalPrice: minimalPrice,
        priceForIt: priceForIt,
        rating: rating,
        ratingName: ratingName,
        imageUrls: imageUrls,
        aboutTheHotel: aboutTheHotel.toEntity(),
      );
}

@freezed
class AboutTheHotelModel with _$AboutTheHotelModel {
  const AboutTheHotelModel._();

  const factory AboutTheHotelModel({
    required String description,
    required List<String> peculiarities,
  }) = _AboutTheHotelModel;

  factory AboutTheHotelModel.fromJson(Map<String, Object?> json) =>
      _$AboutTheHotelModelFromJson(json);

  AboutTheHotel toEntity() => AboutTheHotel(
        description: description,
        peculiarities: peculiarities,
      );
}

@freezed
class ListRoomsModel with _$ListRoomsModel {
  const ListRoomsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ListRoomsModel({required List<RoomModel> rooms}) =
      _ListRoomsModel;

  factory ListRoomsModel.fromJson(Map<String, Object?> json) =>
      _$ListRoomsModelFromJson(json);

  List<Room> toEntity() => rooms.map((r) => r.toEntity()).toList();
}

@freezed
class RoomModel with _$RoomModel {
  const RoomModel._();

  const factory RoomModel({
    required int id,
    required String name,
    required int price,
    @JsonKey(name: 'price_per') required String pricePer,
    required List<String> peculiarities,
    @JsonKey(name: 'image_urls') required List<String> imageUrls,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, Object?> json) =>
      _$RoomModelFromJson(json);

  Room toEntity() => Room(
      id: id,
      name: name,
      price: price,
      pricePer: pricePer,
      peculiarities: peculiarities,
      imageUrls: imageUrls);
}

@freezed
class BookingModel with _$BookingModel {
  const BookingModel._();

  const factory BookingModel({
    required int id,
    @JsonKey(name: 'hotel_name') required String hotelName,
    @JsonKey(name: 'hotel_adress') required String hotelAdress,
    required int horating,
    @JsonKey(name: 'rating_name') required String ratingName,
    required String departure,
    @JsonKey(name: 'arrival_country') required String arrivalCountry,
    @JsonKey(name: 'tour_date_start') required String tourDateStart,
    @JsonKey(name: 'tour_date_stop') required String tourDateStop,
    @JsonKey(name: 'number_of_nights') required int numberOfNights,
    required String room,
    required String nutrition,
    @JsonKey(name: 'tour_price') required int tourPrice,
    @JsonKey(name: 'fuel_charge') required int fuelCharge,
    @JsonKey(name: 'service_charge') required int serviceCharge,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);

  Booking toEntity() => Booking(
      id: id,
      hotelName: hotelName,
      hotelAdress: hotelAdress,
      horating: horating,
      ratingName: ratingName,
      departure: departure,
      arrivalCountry: arrivalCountry,
      tourDateStart: tourDateStart,
      tourDateStop: tourDateStop,
      numberOfNights: numberOfNights,
      room: room,
      nutrition: nutrition,
      tourPrice: tourPrice,
      fuelCharge: fuelCharge,
      serviceCharge: serviceCharge);
}
