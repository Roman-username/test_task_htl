// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) {
  return _HotelModel.fromJson(json);
}

/// @nodoc
mixin _$HotelModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get adress => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_price')
  int get minimalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_for_it')
  String get priceForIt => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'about_the_hotel')
  AboutTheHotelModel get aboutTheHotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelModelCopyWith<HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelModelCopyWith<$Res> {
  factory $HotelModelCopyWith(
          HotelModel value, $Res Function(HotelModel) then) =
      _$HotelModelCopyWithImpl<$Res, HotelModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String adress,
      @JsonKey(name: 'minimal_price') int minimalPrice,
      @JsonKey(name: 'price_for_it') String priceForIt,
      int rating,
      @JsonKey(name: 'rating_name') String ratingName,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel') AboutTheHotelModel aboutTheHotel});

  $AboutTheHotelModelCopyWith<$Res> get aboutTheHotel;
}

/// @nodoc
class _$HotelModelCopyWithImpl<$Res, $Val extends HotelModel>
    implements $HotelModelCopyWith<$Res> {
  _$HotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? adress = null,
    Object? minimalPrice = null,
    Object? priceForIt = null,
    Object? rating = null,
    Object? ratingName = null,
    Object? imageUrls = null,
    Object? aboutTheHotel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aboutTheHotel: null == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutTheHotelModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AboutTheHotelModelCopyWith<$Res> get aboutTheHotel {
    return $AboutTheHotelModelCopyWith<$Res>(_value.aboutTheHotel, (value) {
      return _then(_value.copyWith(aboutTheHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelModelImplCopyWith<$Res>
    implements $HotelModelCopyWith<$Res> {
  factory _$$HotelModelImplCopyWith(
          _$HotelModelImpl value, $Res Function(_$HotelModelImpl) then) =
      __$$HotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String adress,
      @JsonKey(name: 'minimal_price') int minimalPrice,
      @JsonKey(name: 'price_for_it') String priceForIt,
      int rating,
      @JsonKey(name: 'rating_name') String ratingName,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel') AboutTheHotelModel aboutTheHotel});

  @override
  $AboutTheHotelModelCopyWith<$Res> get aboutTheHotel;
}

/// @nodoc
class __$$HotelModelImplCopyWithImpl<$Res>
    extends _$HotelModelCopyWithImpl<$Res, _$HotelModelImpl>
    implements _$$HotelModelImplCopyWith<$Res> {
  __$$HotelModelImplCopyWithImpl(
      _$HotelModelImpl _value, $Res Function(_$HotelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? adress = null,
    Object? minimalPrice = null,
    Object? priceForIt = null,
    Object? rating = null,
    Object? ratingName = null,
    Object? imageUrls = null,
    Object? aboutTheHotel = null,
  }) {
    return _then(_$HotelModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aboutTheHotel: null == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutTheHotelModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$HotelModelImpl extends _HotelModel {
  const _$HotelModelImpl(
      {required this.id,
      required this.name,
      required this.adress,
      @JsonKey(name: 'minimal_price') required this.minimalPrice,
      @JsonKey(name: 'price_for_it') required this.priceForIt,
      required this.rating,
      @JsonKey(name: 'rating_name') required this.ratingName,
      @JsonKey(name: 'image_urls') required final List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel') required this.aboutTheHotel})
      : _imageUrls = imageUrls,
        super._();

  factory _$HotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String adress;
  @override
  @JsonKey(name: 'minimal_price')
  final int minimalPrice;
  @override
  @JsonKey(name: 'price_for_it')
  final String priceForIt;
  @override
  final int rating;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;
  final List<String> _imageUrls;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  @JsonKey(name: 'about_the_hotel')
  final AboutTheHotelModel aboutTheHotel;

  @override
  String toString() {
    return 'HotelModel(id: $id, name: $name, adress: $adress, minimalPrice: $minimalPrice, priceForIt: $priceForIt, rating: $rating, ratingName: $ratingName, imageUrls: $imageUrls, aboutTheHotel: $aboutTheHotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.minimalPrice, minimalPrice) ||
                other.minimalPrice == minimalPrice) &&
            (identical(other.priceForIt, priceForIt) ||
                other.priceForIt == priceForIt) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.aboutTheHotel, aboutTheHotel) ||
                other.aboutTheHotel == aboutTheHotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      adress,
      minimalPrice,
      priceForIt,
      rating,
      ratingName,
      const DeepCollectionEquality().hash(_imageUrls),
      aboutTheHotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      __$$HotelModelImplCopyWithImpl<_$HotelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelModelImplToJson(
      this,
    );
  }
}

abstract class _HotelModel extends HotelModel {
  const factory _HotelModel(
      {required final int id,
      required final String name,
      required final String adress,
      @JsonKey(name: 'minimal_price') required final int minimalPrice,
      @JsonKey(name: 'price_for_it') required final String priceForIt,
      required final int rating,
      @JsonKey(name: 'rating_name') required final String ratingName,
      @JsonKey(name: 'image_urls') required final List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel')
      required final AboutTheHotelModel aboutTheHotel}) = _$HotelModelImpl;
  const _HotelModel._() : super._();

  factory _HotelModel.fromJson(Map<String, dynamic> json) =
      _$HotelModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get adress;
  @override
  @JsonKey(name: 'minimal_price')
  int get minimalPrice;
  @override
  @JsonKey(name: 'price_for_it')
  String get priceForIt;
  @override
  int get rating;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;
  @override
  @JsonKey(name: 'about_the_hotel')
  AboutTheHotelModel get aboutTheHotel;
  @override
  @JsonKey(ignore: true)
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AboutTheHotelModel _$AboutTheHotelModelFromJson(Map<String, dynamic> json) {
  return _AboutTheHotelModel.fromJson(json);
}

/// @nodoc
mixin _$AboutTheHotelModel {
  String get description => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutTheHotelModelCopyWith<AboutTheHotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutTheHotelModelCopyWith<$Res> {
  factory $AboutTheHotelModelCopyWith(
          AboutTheHotelModel value, $Res Function(AboutTheHotelModel) then) =
      _$AboutTheHotelModelCopyWithImpl<$Res, AboutTheHotelModel>;
  @useResult
  $Res call({String description, List<String> peculiarities});
}

/// @nodoc
class _$AboutTheHotelModelCopyWithImpl<$Res, $Val extends AboutTheHotelModel>
    implements $AboutTheHotelModelCopyWith<$Res> {
  _$AboutTheHotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutTheHotelModelImplCopyWith<$Res>
    implements $AboutTheHotelModelCopyWith<$Res> {
  factory _$$AboutTheHotelModelImplCopyWith(_$AboutTheHotelModelImpl value,
          $Res Function(_$AboutTheHotelModelImpl) then) =
      __$$AboutTheHotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> peculiarities});
}

/// @nodoc
class __$$AboutTheHotelModelImplCopyWithImpl<$Res>
    extends _$AboutTheHotelModelCopyWithImpl<$Res, _$AboutTheHotelModelImpl>
    implements _$$AboutTheHotelModelImplCopyWith<$Res> {
  __$$AboutTheHotelModelImplCopyWithImpl(_$AboutTheHotelModelImpl _value,
      $Res Function(_$AboutTheHotelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_$AboutTheHotelModelImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutTheHotelModelImpl extends _AboutTheHotelModel {
  const _$AboutTheHotelModelImpl(
      {required this.description, required final List<String> peculiarities})
      : _peculiarities = peculiarities,
        super._();

  factory _$AboutTheHotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutTheHotelModelImplFromJson(json);

  @override
  final String description;
  final List<String> _peculiarities;
  @override
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  @override
  String toString() {
    return 'AboutTheHotelModel(description: $description, peculiarities: $peculiarities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutTheHotelModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_peculiarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutTheHotelModelImplCopyWith<_$AboutTheHotelModelImpl> get copyWith =>
      __$$AboutTheHotelModelImplCopyWithImpl<_$AboutTheHotelModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutTheHotelModelImplToJson(
      this,
    );
  }
}

abstract class _AboutTheHotelModel extends AboutTheHotelModel {
  const factory _AboutTheHotelModel(
      {required final String description,
      required final List<String> peculiarities}) = _$AboutTheHotelModelImpl;
  const _AboutTheHotelModel._() : super._();

  factory _AboutTheHotelModel.fromJson(Map<String, dynamic> json) =
      _$AboutTheHotelModelImpl.fromJson;

  @override
  String get description;
  @override
  List<String> get peculiarities;
  @override
  @JsonKey(ignore: true)
  _$$AboutTheHotelModelImplCopyWith<_$AboutTheHotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListRoomsModel _$ListRoomsModelFromJson(Map<String, dynamic> json) {
  return _ListRoomsModel.fromJson(json);
}

/// @nodoc
mixin _$ListRoomsModel {
  List<RoomModel> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListRoomsModelCopyWith<ListRoomsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListRoomsModelCopyWith<$Res> {
  factory $ListRoomsModelCopyWith(
          ListRoomsModel value, $Res Function(ListRoomsModel) then) =
      _$ListRoomsModelCopyWithImpl<$Res, ListRoomsModel>;
  @useResult
  $Res call({List<RoomModel> rooms});
}

/// @nodoc
class _$ListRoomsModelCopyWithImpl<$Res, $Val extends ListRoomsModel>
    implements $ListRoomsModelCopyWith<$Res> {
  _$ListRoomsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListRoomsModelImplCopyWith<$Res>
    implements $ListRoomsModelCopyWith<$Res> {
  factory _$$ListRoomsModelImplCopyWith(_$ListRoomsModelImpl value,
          $Res Function(_$ListRoomsModelImpl) then) =
      __$$ListRoomsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RoomModel> rooms});
}

/// @nodoc
class __$$ListRoomsModelImplCopyWithImpl<$Res>
    extends _$ListRoomsModelCopyWithImpl<$Res, _$ListRoomsModelImpl>
    implements _$$ListRoomsModelImplCopyWith<$Res> {
  __$$ListRoomsModelImplCopyWithImpl(
      _$ListRoomsModelImpl _value, $Res Function(_$ListRoomsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$ListRoomsModelImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ListRoomsModelImpl extends _ListRoomsModel {
  const _$ListRoomsModelImpl({required final List<RoomModel> rooms})
      : _rooms = rooms,
        super._();

  factory _$ListRoomsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListRoomsModelImplFromJson(json);

  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'ListRoomsModel(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListRoomsModelImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListRoomsModelImplCopyWith<_$ListRoomsModelImpl> get copyWith =>
      __$$ListRoomsModelImplCopyWithImpl<_$ListRoomsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListRoomsModelImplToJson(
      this,
    );
  }
}

abstract class _ListRoomsModel extends ListRoomsModel {
  const factory _ListRoomsModel({required final List<RoomModel> rooms}) =
      _$ListRoomsModelImpl;
  const _ListRoomsModel._() : super._();

  factory _ListRoomsModel.fromJson(Map<String, dynamic> json) =
      _$ListRoomsModelImpl.fromJson;

  @override
  List<RoomModel> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$ListRoomsModelImplCopyWith<_$ListRoomsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) {
  return _RoomModel.fromJson(json);
}

/// @nodoc
mixin _$RoomModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per')
  String get pricePer => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res, RoomModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      @JsonKey(name: 'price_per') String pricePer,
      List<String> peculiarities,
      @JsonKey(name: 'image_urls') List<String> imageUrls});
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res, $Val extends RoomModel>
    implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? pricePer = null,
    Object? peculiarities = null,
    Object? imageUrls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomModelImplCopyWith<$Res>
    implements $RoomModelCopyWith<$Res> {
  factory _$$RoomModelImplCopyWith(
          _$RoomModelImpl value, $Res Function(_$RoomModelImpl) then) =
      __$$RoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      @JsonKey(name: 'price_per') String pricePer,
      List<String> peculiarities,
      @JsonKey(name: 'image_urls') List<String> imageUrls});
}

/// @nodoc
class __$$RoomModelImplCopyWithImpl<$Res>
    extends _$RoomModelCopyWithImpl<$Res, _$RoomModelImpl>
    implements _$$RoomModelImplCopyWith<$Res> {
  __$$RoomModelImplCopyWithImpl(
      _$RoomModelImpl _value, $Res Function(_$RoomModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? pricePer = null,
    Object? peculiarities = null,
    Object? imageUrls = null,
  }) {
    return _then(_$RoomModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomModelImpl extends _RoomModel {
  const _$RoomModelImpl(
      {required this.id,
      required this.name,
      required this.price,
      @JsonKey(name: 'price_per') required this.pricePer,
      required final List<String> peculiarities,
      @JsonKey(name: 'image_urls') required final List<String> imageUrls})
      : _peculiarities = peculiarities,
        _imageUrls = imageUrls,
        super._();

  factory _$RoomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  @JsonKey(name: 'price_per')
  final String pricePer;
  final List<String> _peculiarities;
  @override
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  final List<String> _imageUrls;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  String toString() {
    return 'RoomModel(id: $id, name: $name, price: $price, pricePer: $pricePer, peculiarities: $peculiarities, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pricePer, pricePer) ||
                other.pricePer == pricePer) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      pricePer,
      const DeepCollectionEquality().hash(_peculiarities),
      const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      __$$RoomModelImplCopyWithImpl<_$RoomModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomModelImplToJson(
      this,
    );
  }
}

abstract class _RoomModel extends RoomModel {
  const factory _RoomModel(
          {required final int id,
          required final String name,
          required final int price,
          @JsonKey(name: 'price_per') required final String pricePer,
          required final List<String> peculiarities,
          @JsonKey(name: 'image_urls') required final List<String> imageUrls}) =
      _$RoomModelImpl;
  const _RoomModel._() : super._();

  factory _RoomModel.fromJson(Map<String, dynamic> json) =
      _$RoomModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(name: 'price_per')
  String get pricePer;
  @override
  List<String> get peculiarities;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_name')
  String get hotelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_adress')
  String get hotelAdress => throw _privateConstructorUsedError;
  int get horating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;
  String get departure => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrival_country')
  String get arrivalCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_start')
  String get tourDateStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_stop')
  String get tourDateStop => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_nights')
  int get numberOfNights => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  String get nutrition => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_price')
  int get tourPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'fuel_charge')
  int get fuelCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_charge')
  int get serviceCharge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hotel_name') String hotelName,
      @JsonKey(name: 'hotel_adress') String hotelAdress,
      int horating,
      @JsonKey(name: 'rating_name') String ratingName,
      String departure,
      @JsonKey(name: 'arrival_country') String arrivalCountry,
      @JsonKey(name: 'tour_date_start') String tourDateStart,
      @JsonKey(name: 'tour_date_stop') String tourDateStop,
      @JsonKey(name: 'number_of_nights') int numberOfNights,
      String room,
      String nutrition,
      @JsonKey(name: 'tour_price') int tourPrice,
      @JsonKey(name: 'fuel_charge') int fuelCharge,
      @JsonKey(name: 'service_charge') int serviceCharge});
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotelName = null,
    Object? hotelAdress = null,
    Object? horating = null,
    Object? ratingName = null,
    Object? departure = null,
    Object? arrivalCountry = null,
    Object? tourDateStart = null,
    Object? tourDateStop = null,
    Object? numberOfNights = null,
    Object? room = null,
    Object? nutrition = null,
    Object? tourPrice = null,
    Object? fuelCharge = null,
    Object? serviceCharge = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hotelName: null == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String,
      hotelAdress: null == hotelAdress
          ? _value.hotelAdress
          : hotelAdress // ignore: cast_nullable_to_non_nullable
              as String,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalCountry: null == arrivalCountry
          ? _value.arrivalCountry
          : arrivalCountry // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStart: null == tourDateStart
          ? _value.tourDateStart
          : tourDateStart // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStop: null == tourDateStop
          ? _value.tourDateStop
          : tourDateStop // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfNights: null == numberOfNights
          ? _value.numberOfNights
          : numberOfNights // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      tourPrice: null == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as int,
      fuelCharge: null == fuelCharge
          ? _value.fuelCharge
          : fuelCharge // ignore: cast_nullable_to_non_nullable
              as int,
      serviceCharge: null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingModelImplCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$BookingModelImplCopyWith(
          _$BookingModelImpl value, $Res Function(_$BookingModelImpl) then) =
      __$$BookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hotel_name') String hotelName,
      @JsonKey(name: 'hotel_adress') String hotelAdress,
      int horating,
      @JsonKey(name: 'rating_name') String ratingName,
      String departure,
      @JsonKey(name: 'arrival_country') String arrivalCountry,
      @JsonKey(name: 'tour_date_start') String tourDateStart,
      @JsonKey(name: 'tour_date_stop') String tourDateStop,
      @JsonKey(name: 'number_of_nights') int numberOfNights,
      String room,
      String nutrition,
      @JsonKey(name: 'tour_price') int tourPrice,
      @JsonKey(name: 'fuel_charge') int fuelCharge,
      @JsonKey(name: 'service_charge') int serviceCharge});
}

/// @nodoc
class __$$BookingModelImplCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$BookingModelImpl>
    implements _$$BookingModelImplCopyWith<$Res> {
  __$$BookingModelImplCopyWithImpl(
      _$BookingModelImpl _value, $Res Function(_$BookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotelName = null,
    Object? hotelAdress = null,
    Object? horating = null,
    Object? ratingName = null,
    Object? departure = null,
    Object? arrivalCountry = null,
    Object? tourDateStart = null,
    Object? tourDateStop = null,
    Object? numberOfNights = null,
    Object? room = null,
    Object? nutrition = null,
    Object? tourPrice = null,
    Object? fuelCharge = null,
    Object? serviceCharge = null,
  }) {
    return _then(_$BookingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hotelName: null == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String,
      hotelAdress: null == hotelAdress
          ? _value.hotelAdress
          : hotelAdress // ignore: cast_nullable_to_non_nullable
              as String,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalCountry: null == arrivalCountry
          ? _value.arrivalCountry
          : arrivalCountry // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStart: null == tourDateStart
          ? _value.tourDateStart
          : tourDateStart // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStop: null == tourDateStop
          ? _value.tourDateStop
          : tourDateStop // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfNights: null == numberOfNights
          ? _value.numberOfNights
          : numberOfNights // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      tourPrice: null == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as int,
      fuelCharge: null == fuelCharge
          ? _value.fuelCharge
          : fuelCharge // ignore: cast_nullable_to_non_nullable
              as int,
      serviceCharge: null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingModelImpl extends _BookingModel {
  const _$BookingModelImpl(
      {required this.id,
      @JsonKey(name: 'hotel_name') required this.hotelName,
      @JsonKey(name: 'hotel_adress') required this.hotelAdress,
      required this.horating,
      @JsonKey(name: 'rating_name') required this.ratingName,
      required this.departure,
      @JsonKey(name: 'arrival_country') required this.arrivalCountry,
      @JsonKey(name: 'tour_date_start') required this.tourDateStart,
      @JsonKey(name: 'tour_date_stop') required this.tourDateStop,
      @JsonKey(name: 'number_of_nights') required this.numberOfNights,
      required this.room,
      required this.nutrition,
      @JsonKey(name: 'tour_price') required this.tourPrice,
      @JsonKey(name: 'fuel_charge') required this.fuelCharge,
      @JsonKey(name: 'service_charge') required this.serviceCharge})
      : super._();

  factory _$BookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'hotel_name')
  final String hotelName;
  @override
  @JsonKey(name: 'hotel_adress')
  final String hotelAdress;
  @override
  final int horating;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;
  @override
  final String departure;
  @override
  @JsonKey(name: 'arrival_country')
  final String arrivalCountry;
  @override
  @JsonKey(name: 'tour_date_start')
  final String tourDateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  final String tourDateStop;
  @override
  @JsonKey(name: 'number_of_nights')
  final int numberOfNights;
  @override
  final String room;
  @override
  final String nutrition;
  @override
  @JsonKey(name: 'tour_price')
  final int tourPrice;
  @override
  @JsonKey(name: 'fuel_charge')
  final int fuelCharge;
  @override
  @JsonKey(name: 'service_charge')
  final int serviceCharge;

  @override
  String toString() {
    return 'BookingModel(id: $id, hotelName: $hotelName, hotelAdress: $hotelAdress, horating: $horating, ratingName: $ratingName, departure: $departure, arrivalCountry: $arrivalCountry, tourDateStart: $tourDateStart, tourDateStop: $tourDateStop, numberOfNights: $numberOfNights, room: $room, nutrition: $nutrition, tourPrice: $tourPrice, fuelCharge: $fuelCharge, serviceCharge: $serviceCharge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelName, hotelName) ||
                other.hotelName == hotelName) &&
            (identical(other.hotelAdress, hotelAdress) ||
                other.hotelAdress == hotelAdress) &&
            (identical(other.horating, horating) ||
                other.horating == horating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrivalCountry, arrivalCountry) ||
                other.arrivalCountry == arrivalCountry) &&
            (identical(other.tourDateStart, tourDateStart) ||
                other.tourDateStart == tourDateStart) &&
            (identical(other.tourDateStop, tourDateStop) ||
                other.tourDateStop == tourDateStop) &&
            (identical(other.numberOfNights, numberOfNights) ||
                other.numberOfNights == numberOfNights) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.tourPrice, tourPrice) ||
                other.tourPrice == tourPrice) &&
            (identical(other.fuelCharge, fuelCharge) ||
                other.fuelCharge == fuelCharge) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      hotelName,
      hotelAdress,
      horating,
      ratingName,
      departure,
      arrivalCountry,
      tourDateStart,
      tourDateStop,
      numberOfNights,
      room,
      nutrition,
      tourPrice,
      fuelCharge,
      serviceCharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      __$$BookingModelImplCopyWithImpl<_$BookingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingModelImplToJson(
      this,
    );
  }
}

abstract class _BookingModel extends BookingModel {
  const factory _BookingModel(
      {required final int id,
      @JsonKey(name: 'hotel_name') required final String hotelName,
      @JsonKey(name: 'hotel_adress') required final String hotelAdress,
      required final int horating,
      @JsonKey(name: 'rating_name') required final String ratingName,
      required final String departure,
      @JsonKey(name: 'arrival_country') required final String arrivalCountry,
      @JsonKey(name: 'tour_date_start') required final String tourDateStart,
      @JsonKey(name: 'tour_date_stop') required final String tourDateStop,
      @JsonKey(name: 'number_of_nights') required final int numberOfNights,
      required final String room,
      required final String nutrition,
      @JsonKey(name: 'tour_price') required final int tourPrice,
      @JsonKey(name: 'fuel_charge') required final int fuelCharge,
      @JsonKey(name: 'service_charge')
      required final int serviceCharge}) = _$BookingModelImpl;
  const _BookingModel._() : super._();

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$BookingModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'hotel_name')
  String get hotelName;
  @override
  @JsonKey(name: 'hotel_adress')
  String get hotelAdress;
  @override
  int get horating;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;
  @override
  String get departure;
  @override
  @JsonKey(name: 'arrival_country')
  String get arrivalCountry;
  @override
  @JsonKey(name: 'tour_date_start')
  String get tourDateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  String get tourDateStop;
  @override
  @JsonKey(name: 'number_of_nights')
  int get numberOfNights;
  @override
  String get room;
  @override
  String get nutrition;
  @override
  @JsonKey(name: 'tour_price')
  int get tourPrice;
  @override
  @JsonKey(name: 'fuel_charge')
  int get fuelCharge;
  @override
  @JsonKey(name: 'service_charge')
  int get serviceCharge;
  @override
  @JsonKey(ignore: true)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
