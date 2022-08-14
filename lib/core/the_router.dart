import 'package:get/get.dart';
import 'package:palo_probation/ui/pages/detail/detail_view.dart';
import 'package:palo_probation/ui/pages/home/home_view.dart';

class TheRouter {
  static final getPages = [
    GetPage(name: '/', page: () => HomeView()),
    GetPage(name: '/detail', page: () => DetailView()),
  ];
}
