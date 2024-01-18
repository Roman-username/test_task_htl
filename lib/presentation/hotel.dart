import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_task_htl/presentation/notifiers/notifiers.dart';
import 'package:test_task_htl/presentation/rooms.dart';
import 'package:test_task_htl/presentation/widgets.dart';
import 'package:test_task_htl/styles.dart';

import '../constatns.dart';

class HotelPage extends ConsumerStatefulWidget {
  static String routeName = 'hotel';

  const HotelPage({super.key});

  @override
  ConsumerState createState() => _HotelState();
}

class _HotelState extends ConsumerState<HotelPage> {
  @override
  Widget build(BuildContext context) {
    final hotel = ref.watch(hotelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Отель')),
      body: switch (hotel) {
        AsyncData(:final value) => Stack(
            children: [
              SafeArea(
                child: ListView(
                  children: [
                    InfoCard(
                      topMargin: 0,
                      children: [
                        PhotoSlider(imageUrls: value.imageUrls),
                        const SizedBox(height: 16),
                        HotelScore(
                          rating: value.rating,
                          ratingName: value.ratingName,
                        ),
                        const SizedBox(height: 8),
                        Text(value.name, style: kTitleTextStyle),
                        const SizedBox(height: 8),
                        AdressButton(value.adress),
                        const SizedBox(height: 16),
                        PriceWidget(
                          pricePrefix: 'От',
                          price: value.minimalPrice,
                          pricePer: value.priceForIt,
                        )
                      ],
                    ),
                    InfoCard(
                      children: [
                        const Text('Об отеле', style: kTitleTextStyle),
                        const SizedBox(height: 16),
                        Peculiarities(value.aboutTheHotel.peculiarities),
                        const SizedBox(height: 12),
                        Text(
                          value.aboutTheHotel.description,
                          style: kTextStyle16w400.copyWith(
                            color: const Color.fromRGBO(0, 0, 0, 0.9),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const HotelTiles(),
                      ],
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
              FooterButtonBlock(
                label: 'К выбору номера',
                onPressed: () {
                  ref.read(getRoomsParamsNotifierProvider.notifier).id =
                      '8b532701-709e-4194-a41c-1a903af00195';
                  Navigator.pushNamed(context, RoomsPage.routName);
                },
              ),
            ],
          ),
        AsyncError() => const Center(
            child: Text('Не удалось загрузить информацию об отеле.')),
        _ => const Center(child: CupertinoActivityIndicator()),
      },
    );
  }
}

class HotelTiles extends StatelessWidget {
  const HotelTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: const Color.fromRGBO(251, 251, 252, 1),
        child: CupertinoListSection(
          topMargin: 0,
          margin: EdgeInsets.zero,
          children: [
            ...kHotelTilesData
                .map(
                  (Map e) => CupertinoListTile(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    backgroundColor: const Color.fromRGBO(251, 251, 252, 1),
                    leading: Icon(e['icon']),
                    title: Text(e['title'], style: kTextStyle16w500),
                    subtitle: Text(
                      'Самое необходимое',
                      style: kTextStyle16w500.copyWith(
                        color: const Color.fromRGBO(130, 135, 150, 1),
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
