import 'package:get/get.dart';
import 'package:palo_probation/shares/constants/the_arguments.dart';
import 'package:palo_probation/shares/constants/the_constants.dart';

class DetailViewController extends GetxController {
  double spacing = 8.0;
  final DetailViewArgs args = Get.arguments ??
      DetailViewArgs(companyProp: TheConstants.companyProps[1]);
}
