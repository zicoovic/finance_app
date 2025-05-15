import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'card_grid_widget.dart';
import 'card_item_widget.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({super.key});

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {
  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            padEnds: false,
            height: 263.h,
            viewportFraction: 0.5,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndexPage = index;
              });
            },
          ),
          items: const [
            CardItemWidget(
              cardName: "X-Card",
              cardNumber: "**** **** 1234",
              cardBalance: "23400 EG",
              cardDate: "12/22",
            ),
            CardItemWidget(
              cardName: "M-Card",
              cardNumber: "**** **** 2234",
              cardBalance: "1200 EG",
              cardDate: "12/22",
            ),
            CardItemWidget(
              cardName: "M-Card",
              cardNumber: "**** **** 2234",
              cardBalance: "2000 EG",
              cardDate: "12/22",
            ),
          ],
        ),
        const HightSpace(16),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndexPage.toDouble(),
          decorator: DotsDecorator(
            spacing: const EdgeInsets.symmetric(horizontal: 4),
            color: const Color(0xffE3E9ED),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
