import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palo_probation/shares/constants/the_enums.dart';
import 'package:palo_probation/shares/helpers/the_helpers.dart';
import 'package:palo_probation/ui/pages/detail/components/detail_achievement.dart';
import 'package:palo_probation/ui/pages/detail/components/detail_learning.dart';
import 'package:palo_probation/ui/pages/detail/components/detail_organisation.dart';
import 'package:palo_probation/ui/pages/detail/components/detail_people.dart';
import 'package:palo_probation/ui/pages/detail/detail_view_controller.dart';

class DetailView extends GetResponsiveView<DetailViewController> {
  DetailView({Key? key}) : super(key: key);

  @override
  Widget? builder() {
    Get.put(DetailViewController());
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: controller.args.companyProp.startAlignment,
              end: controller.args.companyProp.endAlignment,
              colors: [
                controller.args.companyProp.color.withOpacity(0.5),
                controller.args.companyProp.color.withOpacity(0.75),
                controller.args.companyProp.color.withOpacity(1),
              ],
            ),
          ),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
        title: Row(
          children: [
            Text(
              controller.args.companyProp.meaning,
              style: GoogleFonts.assistant(
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              color: controller.args.companyProp.color.withOpacity(0.25),
            ),
            child: Hero(
              tag: controller.args.companyProp.name,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Center(
                  child: Text(
                    controller.args.companyProp.meaning,
                    style: GoogleFonts.assistant(
                      color: controller.args.companyProp.color,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          TheHelper.customSwitch<CompanyPropType, Widget>(
            controller.args.companyProp.companyPropType,
            {
              CompanyPropType.P: DetailPeople(),
              CompanyPropType.A: DetailAchievement(),
              CompanyPropType.L: DetailLearning(),
              CompanyPropType.O: DetailOrganisation(),
            },
            defaultCase: DetailPeople(),
          ),
        ],
      ),
    );
  }
}
