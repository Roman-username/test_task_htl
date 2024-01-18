// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifiers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hotelHash() => r'8fd4bd6e0a4b717dfc71ddb0f12be5501cfd01cb';

/// See also [hotel].
@ProviderFor(hotel)
final hotelProvider = FutureProvider<Hotel>.internal(
  hotel,
  name: r'hotelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$hotelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HotelRef = FutureProviderRef<Hotel>;
String _$roomsHash() => r'55ef019da95e5012edf59d8680e1e69555b4bc1e';

/// See also [rooms].
@ProviderFor(rooms)
final roomsProvider = AutoDisposeFutureProvider<List<Room>>.internal(
  rooms,
  name: r'roomsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$roomsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RoomsRef = AutoDisposeFutureProviderRef<List<Room>>;
String _$bookingHash() => r'55aab34810ebe9628aa0d24bb5e3ddb528746015';

/// See also [booking].
@ProviderFor(booking)
final bookingProvider = AutoDisposeFutureProvider<Booking>.internal(
  booking,
  name: r'bookingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bookingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BookingRef = AutoDisposeFutureProviderRef<Booking>;
String _$getHotelParamsNotifierHash() =>
    r'62005baf2b27522b7f1900ccc41aada77e06dcec';

/// See also [GetHotelParamsNotifier].
@ProviderFor(GetHotelParamsNotifier)
final getHotelParamsNotifierProvider =
    NotifierProvider<GetHotelParamsNotifier, GetHotelParams>.internal(
  GetHotelParamsNotifier.new,
  name: r'getHotelParamsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getHotelParamsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetHotelParamsNotifier = Notifier<GetHotelParams>;
String _$getRoomsParamsNotifierHash() =>
    r'a8b40d968146010cb0f434e4fb59a091d4dcd690';

/// See also [GetRoomsParamsNotifier].
@ProviderFor(GetRoomsParamsNotifier)
final getRoomsParamsNotifierProvider =
    NotifierProvider<GetRoomsParamsNotifier, GetRoomsParams?>.internal(
  GetRoomsParamsNotifier.new,
  name: r'getRoomsParamsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getRoomsParamsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetRoomsParamsNotifier = Notifier<GetRoomsParams?>;
String _$getBookingParamsNotifierHash() =>
    r'8143b68348e17cf25ccaa580cb330d8409f6de83';

/// See also [GetBookingParamsNotifier].
@ProviderFor(GetBookingParamsNotifier)
final getBookingParamsNotifierProvider =
    NotifierProvider<GetBookingParamsNotifier, GetBookingParams?>.internal(
  GetBookingParamsNotifier.new,
  name: r'getBookingParamsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getBookingParamsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetBookingParamsNotifier = Notifier<GetBookingParams?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
