import 'package:flutter/material.dart';
import 'package:test_task_htl/presentation/hotel.dart';

import '../styles.dart';
import 'widgets.dart';

class SucceededPay extends StatelessWidget {
  static const String routName = 'succeeded_pay';

  const SucceededPay({super.key});

  @override
  Widget build(BuildContext context) {
    final orderId = ModalRoute.of(context)?.settings.arguments as int;

    final String text = 'Подтверждение заказа №$orderId может занять некоторое'
        ' время (от 1 часа до суток). Как только мы получим ответ от туроператора,'
        ' вам на почту придет уведомление.';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Бронирование'),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                  child: Container(
                    color: const Color.fromRGBO(246, 246, 249, 1),
                    width: 94,
                    height: 94,
                    child: const Center(
                      child: Text('🎉', style: TextStyle(fontSize: 44)),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Ваш заказ принят в работу',
                  style: kTitleTextStyle,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: kTextStyle16w400.copyWith(
                      color: const Color.fromRGBO(130, 135, 150, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 120),
              ],
            ),
          ),
          FooterButtonBlock(
            label: 'Супер!',
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
              context,
              HotelPage.routeName,
              (route) => false,
            ),
          ),
        ],
      ),
    );
  }
}
