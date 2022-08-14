import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palo_probation/ui/pages/detail/detail_view_controller.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DetailOrganisation extends GetResponsiveView<DetailViewController> {
  DetailOrganisation({Key? key}) : super(key: key);

  @override
  Widget? builder() {
    return Container(
      color: controller.args.companyProp.color,
      height: Get.height - 256,
      child: SfPdfViewer.asset('assets/documents/organisation.pdf'),
    );
  }
}
