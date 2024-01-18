import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import '../constatns.dart';
import '../domain/entities.dart';
import '../styles.dart';
import '../utils.dart';
import 'notifiers/notifiers.dart';
import 'succeeded_pay.dart';
import 'widgets.dart';

class BookingPage extends ConsumerStatefulWidget {
  static String routeName = 'booking';

  const BookingPage({super.key});

  @override
  ConsumerState createState() => _BookingPageState();
}

class _BookingPageState extends ConsumerState<BookingPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final booking = ref.watch(bookingProvider);
    final bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom == 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Бронирование'),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: switch (booking) {
          AsyncData(:final value) => Form(
              key: _formKey,
              child: Stack(
                children: [
                  SafeArea(
                    child: ListView(
                      children: [
                        HotelInfo(value),
                        BookingData(value),
                        const BuyerForm(),
                        const TouristsForm(),
                        PricesBlock(value),
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                  if (isKeyboardOpen)
                    FooterButtonBlock(
                      label: 'Оплатить ${formatPrice(value.tourPrice)} ₽',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          int orderId = Random().nextInt(999999);
                          Navigator.pushNamed(
                            context,
                            SucceededPay.routName,
                            arguments: orderId,
                          );
                        }
                      },
                    ),
                ],
              ),
            ),
          AsyncError() => const Center(
              child: Text('Не удалось загрузить информацию о номерах.')),
          _ => const Center(child: CupertinoActivityIndicator()),
        },
      ),
    );
  }
}

class PricesBlock extends StatelessWidget {
  final Booking booking;

  const PricesBlock(this.booking, {super.key});

  Row _getRow(String priceFor, int price, {Color? priceColor}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            priceFor,
            style: kTextStyle16w400.copyWith(
              color: const Color.fromRGBO(130, 135, 150, 1),
            ),
          ),
          Text(
            '${formatPrice(price)} ₽',
            style: kTextStyle16w400.copyWith(
                color: priceColor,
                fontWeight: priceColor != null ? FontWeight.w600 : null),
          )
        ],
      );

  get _toPay => booking.tourPrice + booking.fuelCharge + booking.serviceCharge;

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      children: [
        _getRow('Тур', booking.tourPrice),
        const SizedBox(height: 16),
        _getRow('Топливный сбор', booking.fuelCharge),
        const SizedBox(height: 16),
        _getRow('Сервисный сбор', booking.serviceCharge),
        const SizedBox(height: 16),
        _getRow('К оплате', _toPay, priceColor: kPrimaryColor),
      ],
    );
  }
}

class TouristsForm extends StatefulWidget {
  const TouristsForm({super.key});

  @override
  State<TouristsForm> createState() => _TouristsFormState();
}

class _TouristsFormState extends State<TouristsForm> {
  int touristsCount = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List<SingleTouristForm>.generate(
          touristsCount,
          (idx) => SingleTouristForm(touristN: idx + 1),
        ),
        InfoCard(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Добавить туриста', style: kTitleTextStyle),
                GestureDetector(
                  onTap: () => setState(() => touristsCount++),
                  child: const Icon(
                    Iconsax.add_square5,
                    color: kPrimaryColor,
                    size: 36,
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}

class SingleTouristForm extends StatefulWidget {
  final int touristN;

  const SingleTouristForm({required this.touristN, super.key});

  @override
  State<SingleTouristForm> createState() => _SingleTouristFormState();
}

class _SingleTouristFormState extends State<SingleTouristForm> {
  bool open = true;

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${numerals[widget.touristN]} турист',
              style: kTitleTextStyle,
            ),
            GestureDetector(
                onTap: () => setState(() => open = !open),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    color: kPrimaryColor.withOpacity(0.1),
                    child: Icon(
                      open
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: kPrimaryColor,
                      size: 32,
                    ),
                  ),
                ))
          ],
        ),
        Visibility(
          visible: open,
          child: const Column(
            children: [
              SizedBox(height: 20),
              BookingField(
                label: 'Имя',
                validator: requiredFieldValidator,
              ),
              BookingField(
                label: 'Фамилия',
                validator: requiredFieldValidator,
              ),
              BookingField(
                label: 'Дата рождения',
                validator: requiredFieldValidator,
                inputType: TextInputType.number,
              ),
              BookingField(
                label: 'Гражданство',
                validator: requiredFieldValidator,
              ),
              BookingField(
                label: 'Номер загранпаспорта',
                validator: requiredFieldValidator,
                inputType: TextInputType.number,
              ),
              BookingField(
                label: 'Срок действия загранпаспорта',
                validator: requiredFieldValidator,
                inputType: TextInputType.number,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class HotelInfo extends StatelessWidget {
  final Booking booking;

  const HotelInfo(this.booking, {super.key});

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      children: [
        HotelScore(
          rating: booking.horating,
          ratingName: booking.ratingName,
        ),
        const SizedBox(height: 8),
        Text(booking.hotelName, style: kTitleTextStyle),
        const SizedBox(height: 8),
        AdressButton(booking.hotelAdress),
      ],
    );
  }
}

class BuyerForm extends StatelessWidget {
  const BuyerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      children: [
        const Text(
          'Информация о покупателе',
          style: kTitleTextStyle,
        ),
        const SizedBox(height: 12),
        BookingField(
          label: 'Номер телефона',
          inputType: TextInputType.phone,
          initValue: PhoneMaskFormatter.mask,
          formatters: [PhoneMaskFormatter()],
          showCursor: false,
          validateOnComplete: true,
          validator: phoneMaskValidator,
        ),
        const BookingField(
          label: 'Почта',
          inputType: TextInputType.emailAddress,
          validator: emailValidator,
          validateOnComplete: true,
        ),
        const SizedBox(height: 8),
        const Text(
          'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(130, 135, 150, 1)),
        )
      ],
    );
  }
}

class BookingField extends StatefulWidget {
  final String label;
  final TextInputType? inputType;
  final bool showCursor;
  final String? Function(String?)? validator;
  final String? initValue;
  final List<TextInputFormatter>? formatters;
  final bool validateOnComplete;

  const BookingField({
    required this.label,
    this.inputType,
    this.showCursor = true,
    this.validator,
    this.initValue,
    this.formatters,
    this.validateOnComplete = false,
    super.key,
  }) : assert(!(validateOnComplete && validator == null),
            'При validateOnComplete = true должен быть указан валидатор');

  @override
  State<BookingField> createState() => _BookingFieldState();
}

class _BookingFieldState extends State<BookingField> {
  final _focusNode = FocusNode();
  late TextEditingController _controller;

  late bool hasFocus = _focusNode.hasFocus;
  late bool isNotEmpty = _controller.text.isNotEmpty;

  bool _isError = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

    _controller.addListener(() {
      isNotEmpty = _controller.text.isNotEmpty;
      if (widget.formatters != null &&
          widget.formatters!.isNotEmpty &&
          !widget.showCursor) {
        final newTextLength = _controller.text.length;
        _controller.selection =
            TextSelection.fromPosition(TextPosition(offset: newTextLength));
      }
    });

    _focusNode.addListener(
      () => setState(() {
        if (widget.initValue != null && !isNotEmpty) {
          _controller.text = widget.initValue!;
        }
        hasFocus = _focusNode.hasFocus;
        _validateOnComplete();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Stack(
        children: [
          TextFormField(
            showCursor: widget.showCursor,
            validator: (String? val) {
              if (widget.validator == null) return null;
              final res = widget.validator!(val);
              if (res != null) setState(() => _isError = true);
              return res;
            },
            inputFormatters: widget.formatters,
            keyboardType: widget.inputType,
            controller: _controller,
            focusNode: _focusNode,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 16, top: 24, bottom: 10),
              filled: true,
              fillColor: _isError
                  ? const Color.fromRGBO(235, 87, 87, 0.15)
                  : const Color.fromRGBO(246, 246, 249, 1),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide.none,
              ),
              errorStyle:
                  const TextStyle(fontSize: 0, color: Colors.transparent),
            ),
            style: kTextStyle16w400.copyWith(
              color: const Color.fromRGBO(20, 20, 43, 1),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            top: hasFocus || isNotEmpty ? 10 : 16,
            left: 16,
            child: AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: hasFocus || isNotEmpty ? 12 : 17,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(169, 171, 183, 1),
              ),
              duration: const Duration(milliseconds: 200),
              child: GestureDetector(
                onTap: () => _focusNode.requestFocus(),
                child: Text(widget.label),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _validateOnComplete() {
    if (!widget.validateOnComplete ||
        widget.validator!(_controller.text) == null ||
        _focusNode.hasFocus) {
      _isError = false;
      return;
    }
    _isError = true;
  }
}

class PhoneMaskFormatter extends TextInputFormatter {
  static const mask = '+7 (***) ***-**-**';

  PhoneMaskFormatter();

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final oldText = oldValue.text;
    final curText = newValue.text;
    int asteriskIdx = oldText.indexOf('*');

    // удаление
    if (curText.length < mask.length) {
      // удалили последний символ
      if (findLastDigitIndex(oldText) == 17) {
        return TextEditingValue(text: '$curText*');
      }
      int? lastDigitIdx = findLastDigitIndex(curText, 3);
      // удалили первую цифру цифру
      if (lastDigitIdx == null) return oldValue;

      final newText = curText.substring(0, lastDigitIdx) +
          '*' +
          oldText.substring(lastDigitIdx + 1);
      return TextEditingValue(text: newText);
    }

    final newChar = curText[curText.length - 1];
    if (asteriskIdx == -1 || // уже всё заполнено цифрами
            int.tryParse(newChar) == null // добавили не цифру
        ) return oldValue;

    // добавление
    final newText = oldText.substring(0, asteriskIdx) +
        newChar +
        oldText.substring(asteriskIdx + 1);
    return TextEditingValue(text: newText);
  }
}

class BookingData extends StatelessWidget {
  final Booking booking;

  const BookingData(this.booking, {super.key});

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      children: [
        BookingDataRow(
          label: 'Вылет из',
          data: booking.departure,
        ),
        BookingDataRow(
          label: 'Страна, город',
          data: booking.arrivalCountry,
        ),
        BookingDataRow(
          label: 'Даты',
          data: '${booking.tourDateStart}–${booking.tourDateStop}',
        ),
        BookingDataRow(
          label: 'Кол-во ночей',
          data: '${booking.numberOfNights} ночей',
        ),
        BookingDataRow(
          label: 'Отель',
          data: booking.hotelName,
        ),
        BookingDataRow(
          label: 'Номер',
          data: booking.room,
        ),
        BookingDataRow(
          label: 'Питание',
          data: booking.nutrition,
          padding: EdgeInsets.zero,
        )
      ],
    );
  }
}

class BookingDataRow extends StatelessWidget {
  final String label;
  final String data;
  late final EdgeInsets padding;

  BookingDataRow(
      {required this.label,
      required this.data,
      EdgeInsets? padding,
      super.key}) {
    this.padding = padding ?? const EdgeInsets.only(bottom: 16);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Text(
                label,
                style: kTextStyle16w400.copyWith(
                  color: const Color.fromRGBO(130, 135, 150, 1),
                ),
              )),
          Expanded(
              flex: 6,
              child: Text(
                data,
                style: kTextStyle16w500,
              ))
        ],
      ),
    );
  }
}
