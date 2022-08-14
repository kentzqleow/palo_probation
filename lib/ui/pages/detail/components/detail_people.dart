import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palo_probation/shares/constants/the_constants.dart';
import 'package:palo_probation/shares/constants/the_enums.dart';
import 'package:palo_probation/ui/pages/detail/detail_view_controller.dart';

class DetailPeople extends GetResponsiveView<DetailViewController> {
  DetailPeople({Key? key}) : super(key: key);

  @override
  Widget? builder() {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (var palowanType in PalowanType.values)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 24.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  gradient: LinearGradient(
                    begin: controller.args.companyProp.startAlignment,
                    end: controller.args.companyProp.endAlignment,
                    colors: [
                      controller.args.companyProp.color.withOpacity(0.5),
                      controller.args.companyProp.color.withOpacity(0.75),
                      controller.args.companyProp.color.withOpacity(1),
                    ],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blue,
                    ),
                  ],
                ),
                child: Text(
                  palowanType.value,
                  style: GoogleFonts.assistant(
                    fontSize: 32.0,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              for (var palowan in TheConstants.palowans
                  .where((palowan) => palowan.palowanType == palowanType))
                ElasticInLeft(
                  child: Card(
                    child: ListTile(
                      title: Text(
                        palowan.name,
                        style: GoogleFonts.assistant(
                          fontSize: 32.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
      ],
    );
  }
}
