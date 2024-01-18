import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_task_htl/presentation/notifiers/notifiers.dart';
import 'package:test_task_htl/presentation/widgets.dart';

import '../styles.dart';
import 'booking.dart';

class RoomsPage extends ConsumerWidget {
  static String routName = 'rooms';

  const RoomsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rooms = ref.watch(roomsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(hotelProvider).value!.name),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: switch (rooms) {
          AsyncData(:final value) => ListView.builder(
              itemCount: value.length,
              itemBuilder: (context, i) => InfoCard(
                children: [
                  PhotoSlider(imageUrls: value[i].imageUrls),
                  const SizedBox(height: 16),
                  Text(value[i].name, style: kTitleTextStyle),
                  const SizedBox(height: 8),
                  Peculiarities(value[i].peculiarities),
                  const RoomDetailsButton(),
                  const SizedBox(height: 16),
                  PriceWidget(
                    price: value[i].price,
                    pricePer: value[i].pricePer,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            ref
                                .read(getBookingParamsNotifierProvider.notifier)
                                .id = '63866c74-d593-432c-af8e-f279d1a8d2ff';
                            Navigator.pushNamed(context, BookingPage.routeName);
                          },
                          child: const Text('Выбрать номер'),
                        ),
                      ),
                    ],
                  )
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

class RoomDetailsButton extends StatelessWidget {
  const RoomDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: kPrimaryColor.withOpacity(0.1),
      textColor: kPrimaryColor,
      padding: const EdgeInsets.only(left: 10),
      onPressed: () {},
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Подробнее о номере', style: kTextStyle16w500),
          Icon(Icons.chevron_right, size: 28),
        ],
      ),
    );
  }
}
