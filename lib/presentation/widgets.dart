import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_task_htl/styles.dart';

import '../utils.dart';

class InfoCard extends StatelessWidget {
  final List<Widget> children;
  final double topMargin;

  const InfoCard({required this.children, this.topMargin = 5, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 4, top: topMargin),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: const Radius.circular(12),
          top: Radius.circular(topMargin == 0 ? 0 : 12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}

class PhotoSlider extends StatefulWidget {
  final List<String> imageUrls;

  const PhotoSlider({required this.imageUrls, super.key});

  @override
  State<PhotoSlider> createState() => _PhotoSliderState();
}

class _PhotoSliderState extends State<PhotoSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final imageUrls = widget.imageUrls;
    return SizedBox(
      height: 247,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: PageView.builder(
              itemCount: imageUrls.length,
              onPageChanged: (int index) =>
                  setState(() => _currentIndex = index),
              itemBuilder: (context, index) => FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading_placeholder.gif',
                image: imageUrls[index],
                fit: BoxFit.cover,
                imageErrorBuilder: (context, error, stackTrace) => const Center(
                    child: Text('Не удалось загрузить изображение')),
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 7.5,
                  vertical: 5,
                ),
                child: Row(
                  children: List.generate(imageUrls.length, (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: _currentIndex == index ? 8 : 7,
                      height: _currentIndex == index ? 8 : 7,
                      margin: const EdgeInsets.symmetric(horizontal: 2.5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.black
                            : Colors.black.withAlpha(22),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HotelScore extends StatelessWidget {
  final int rating;
  final String ratingName;

  const HotelScore({required this.rating, required this.ratingName, super.key});

  @override
  Widget build(BuildContext context) {
    const contentColor = Color.fromRGBO(255, 168, 0, 1);
    return Container(
      height: 29,
      width: 149,
      color: const Color.fromRGBO(255, 199, 0, 0.2),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            size: 15,
            color: contentColor,
          ),
          const SizedBox(width: 2),
          Text(
            '$rating $ratingName',
            style: const TextStyle(
              color: contentColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}

class AdressButton extends StatelessWidget {
  final String adress;

  const AdressButton(this.adress, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        adress,
        style: const TextStyle(
            color: kPrimaryColor, fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class FooterButtonBlock extends StatelessWidget {
  final void Function() onPressed;
  final String label;

  const FooterButtonBlock({
    required this.onPressed,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Material(
        elevation: 10,
        child: Container(
          height: Platform.isIOS ? 88 : null,
          color: Colors.white,
          padding: Platform.isIOS
              ? const EdgeInsets.fromLTRB(16, 12, 16, 28)
              : const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(label),
          ),
        ),
      ),
    );
  }
}

class PriceWidget extends StatelessWidget {
  final int price;
  final String pricePer;
  final String? pricePrefix;

  const PriceWidget({
    required this.price,
    required this.pricePer,
    this.pricePrefix,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formatedPrice = formatPrice(price);
    final strPrice = pricePrefix != null
        ? '$pricePrefix $formatedPrice ₽'
        : '$formatedPrice ₽';
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          strPrice,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pricePer.toLowerCase(),
              style: kTextStyle16w400.copyWith(
                color: const Color.fromRGBO(130, 135, 150, 1),
              ),
            ),
            const SizedBox(height: 3),
          ],
        )
      ],
    );
  }
}

class Peculiarities extends StatelessWidget {
  final List<String> peculiarities;

  const Peculiarities(this.peculiarities, {super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ...peculiarities
            .map(
              (p) => ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  margin: EdgeInsets.zero,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  color: const Color.fromRGBO(251, 251, 252, 1),
                  child: Text(
                    p,
                    style: kTextStyle16w500.copyWith(
                      color: const Color.fromRGBO(130, 135, 150, 1),
                    ),
                  ),
                ),
              ),
            )
            .toList()
      ],
    );
  }
}
