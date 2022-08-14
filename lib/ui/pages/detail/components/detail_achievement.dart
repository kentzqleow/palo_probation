import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palo_probation/ui/commons/custom_swiper.dart';
import 'package:palo_probation/ui/pages/detail/detail_view_controller.dart';

class DetailAchievement extends GetResponsiveView<DetailViewController> {
  DetailAchievement({Key? key}) : super(key: key);

  @override
  Widget? builder() {
    return Container(
      color: controller.args.companyProp.color,
      height: Get.height - 256,
      child: GridView.count(
        padding: const EdgeInsets.all(20.0),
        childAspectRatio: (Get.width - controller.spacing) /
            (Get.height - (controller.spacing * 4) - 256.0) /
            2,
        crossAxisSpacing: controller.spacing,
        mainAxisSpacing: controller.spacing,
        shrinkWrap: true,
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () => Get.to(
              CustomSwiper(
                images: const [
                  'assets/images/community_home.png',
                  'assets/images/community_insights.png',
                  'assets/images/community_insight.png',
                  'assets/images/community_events.png',
                  'assets/images/community_event.png',
                ],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image.asset('assets/images/community_home.png'),
            ),
          ),
          GestureDetector(
            onTap: () => Get.to(
              CustomSwiper(
                images: const [
                  'assets/images/flyer001.jpg',
                  'assets/images/flyer002.jpg',
                  'assets/images/flyer003.jpg',
                  'assets/images/flyer004.jpg',
                  'assets/images/flyer005.jpg',
                  'assets/images/flyer006.jpg',
                  'assets/images/flyer007.jpg',
                  'assets/images/flyer008.jpg',
                ],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image.asset('assets/images/flyer001.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
