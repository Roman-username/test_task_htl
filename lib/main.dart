import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_task_htl/presentation/hotel.dart';
import 'package:test_task_htl/presentation/succeeded_pay.dart';

import 'presentation/booking.dart';
import 'presentation/rooms.dart';
import 'styles.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotels',
      initialRoute: HotelPage.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        HotelPage.routeName: (context) => const HotelPage(),
        RoomsPage.routName: (context) => const RoomsPage(),
        BookingPage.routeName: (context) => const BookingPage(),
        SucceededPay.routName: (context) => const SucceededPay(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(246, 246, 249, 1),
        appBarTheme: appBarTheme,
        useMaterial3: false,
        primaryColor: const Color(0xFF0d72ff),
        fontFamily: 'SF Pro Display',
        elevatedButtonTheme: elevatedButtonTheme,
      ),
    );
  }
}
