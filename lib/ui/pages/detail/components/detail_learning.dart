import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palo_probation/shares/constants/the_constants.dart';
import 'package:palo_probation/ui/pages/detail/detail_view_controller.dart';

class DetailLearning extends GetResponsiveView<DetailViewController> {
  DetailLearning({Key? key}) : super(key: key);

  @override
  Widget? builder() {
    return Container(
      color: controller.args.companyProp.color,
      height: Get.height - 256,
      child: Column(
        children: [
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              for (var learning in TheConstants.learnings)
                TyperAnimatedText(
                  learning,
                  textStyle: GoogleFonts.assistant(
                    color: Colors.white,
                    fontSize: 100.0,
                    decoration: TextDecoration.none,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
