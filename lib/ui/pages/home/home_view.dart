import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palo_probation/shares/constants/the_arguments.dart';
import 'package:palo_probation/shares/constants/the_constants.dart';
import 'package:palo_probation/shares/constants/the_enums.dart';
import 'package:palo_probation/shares/helpers/the_helpers.dart';

import 'home_view_controller.dart';

class HomeView extends GetResponsiveView<HomeViewController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget? builder() {
    Get.put(HomeViewController());
    double circleSize = (min(Get.width, Get.height) / 3);
    return Stack(
      children: [
        GridView.count(
          childAspectRatio: (Get.width - controller.spacing) /
              (Get.height - controller.spacing),
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: controller.spacing,
          mainAxisSpacing: controller.spacing,
          children: [
            for (var companyProp in TheConstants.companyProps)
              TheHelper.customSwitch<Alignment, Widget>(
                companyProp.startAlignment,
                {
                  Alignment.topLeft: SlideInLeft(
                    child: boxItem(companyProp: companyProp),
                  ),
                  Alignment.bottomLeft: SlideInUp(
                    child: boxItem(companyProp: companyProp),
                  ),
                  Alignment.bottomRight: SlideInRight(
                    child: boxItem(companyProp: companyProp),
                  ),
                  Alignment.topRight: SlideInDown(
                    child: boxItem(companyProp: companyProp),
                  ),
                },
                defaultCase: boxItem(companyProp: companyProp),
              ),
          ],
        ),
        Center(
          child: Roulette(
            child: GestureDetector(
              onTap: () =>
                  Get.offNamedUntil(Routes.home.value, (route) => false),
              child: Container(
                width: circleSize,
                height: circleSize,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/palo_it_sg_logo.jpg'),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(circleSize),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4.0,
                      blurRadius: 8.0,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget boxItem({required CompanyProp companyProp}) {
    return GestureDetector(
      onTap: () => Get.toNamed(
        companyProp.navPath.value,
        arguments: DetailViewArgs(companyProp: companyProp),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: companyProp.startAlignment,
            end: companyProp.endAlignment,
            colors: [
              companyProp.color.withOpacity(0.5),
              companyProp.color.withOpacity(0.75),
              companyProp.color.withOpacity(1),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: companyProp.color.withOpacity(0.5),
              spreadRadius: 1.0,
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Hero(
          tag: companyProp.name,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Center(
              child: Text(
                companyProp.name,
                style: GoogleFonts.assistant(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
