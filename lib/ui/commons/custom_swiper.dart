import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:get/get.dart';

class CustomSwiper extends GetResponsiveView {
  final List<String> images;
  CustomSwiper({required this.images, Key? key}) : super(key: key);

  @override
  Widget? builder() {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: Swiper(
        itemBuilder: (context, index) {
          return Image.asset(
            images[index],
            fit: BoxFit.scaleDown,
          );
        },
        itemCount: images.length,
        itemWidth: Get.width,
        itemHeight: Get.height,
        layout: SwiperLayout.TINDER,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
