import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:palo_probation/shares/constants/the_colors.dart';
import 'package:palo_probation/shares/constants/the_enums.dart';

class TheConstants {
  static final List<CompanyProp> companyProps = [
    CompanyProp(
      name: 'P',
      meaning: 'Palowans',
      color: TheColors.primaryA,
      startAlignment: Alignment.topLeft,
      endAlignment: Alignment.bottomRight,
      navPath: Routes.people,
      companyPropType: CompanyPropType.P,
    ),
    CompanyProp(
      name: 'A',
      meaning: 'Achievement',
      color: TheColors.primaryB,
      startAlignment: Alignment.topRight,
      endAlignment: Alignment.bottomLeft,
      navPath: Routes.people,
      companyPropType: CompanyPropType.A,
    ),
    CompanyProp(
      name: 'L',
      meaning: 'Learning',
      color: TheColors.primaryC,
      startAlignment: Alignment.bottomLeft,
      endAlignment: Alignment.topRight,
      navPath: Routes.people,
      companyPropType: CompanyPropType.L,
    ),
    CompanyProp(
      name: 'O',
      meaning: 'Organisation',
      color: TheColors.primaryD,
      startAlignment: Alignment.bottomRight,
      endAlignment: Alignment.topLeft,
      navPath: Routes.people,
      companyPropType: CompanyPropType.O,
    ),
  ];

  static List<String> learnings = [
    'ReactJS',
    'NextJS',
    'Directus',
    'SpringBoot',
    'Zapier',
    'ChakraUI',
    'Agile',
    'Pardot',
    'MUI',
  ];

  static List<Palowan> palowans = [
    Palowan(
      name: 'Jasmine Tay',
      palowanType: PalowanType.interview,
    ),
    Palowan(
      name: 'Alexandre Obellianne',
      palowanType: PalowanType.interview,
    ),
    Palowan(
      name: 'Dushyant Singh',
      palowanType: PalowanType.interview,
    ),
    Palowan(
      name: 'Khong Ming Liang',
      palowanType: PalowanType.interview,
    ),
    Palowan(
      name: 'Amanda Charlene Chia',
      palowanType: PalowanType.interview,
    ),
    Palowan(
      name: 'Gavin Feng Xiang Goh',
      palowanType: PalowanType.onboarding,
    ),
    Palowan(
      name: 'Ting Ting Chua',
      palowanType: PalowanType.onboarding,
    ),
    Palowan(
      name: 'Zann Sim',
      palowanType: PalowanType.onboarding,
    ),
    Palowan(
      name: 'Abhinav Goel',
      palowanType: PalowanType.newbee,
    ),
    Palowan(
      name: 'Alex Auyong',
      palowanType: PalowanType.newbee,
    ),
    Palowan(
      name: 'John Melvin Chua',
      palowanType: PalowanType.newbee,
    ),
    Palowan(
      name: 'Joshua Kwah',
      palowanType: PalowanType.newbee,
    ),
    Palowan(
      name: 'Nora Ahmad Sulhan',
      palowanType: PalowanType.newbee,
    ),
    Palowan(
      name: 'Qizhen Lim',
      palowanType: PalowanType.newbee,
    ),
    Palowan(
      name: 'Ratheesh Vazhayil',
      palowanType: PalowanType.newbee,
    ),
    Palowan(
      name: 'Santhosh Janakiraman',
      palowanType: PalowanType.newbee,
    ),
    Palowan(
      name: 'Ziwei Ang',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Antoine Cusset',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Mathivanan Thirugnanasambandam',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Rebecca Tan',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Alexis Ageorges',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Yin Ni Tun',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Lena Lim',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Dhanabal Shanmugam',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Bhupesh Yedla',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Gerard Lim',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Homesh Mirpuri',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Jian Hao Matthew Auw',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Leok Si Koh',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Amulya Garg',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Balaji Srinivasan',
      palowanType: PalowanType.project,
    ),
    Palowan(
      name: 'Alfred Chan',
      palowanType: PalowanType.more,
    ),
    Palowan(
      name: 'Riley Tan',
      palowanType: PalowanType.more,
    ),
    Palowan(
      name: 'Hui Ting Tan',
      palowanType: PalowanType.more,
    ),
    Palowan(
      name: 'Kevin Aubry',
      palowanType: PalowanType.more,
    ),
  ];
}

class Palowan {
  String name;
  PalowanType palowanType;
  String? avatar;

  Palowan({
    required this.name,
    required this.palowanType,
    this.avatar,
  });
}

class CompanyProp {
  String name;
  String meaning;
  Color color;
  Alignment startAlignment;
  Alignment endAlignment;
  Routes navPath;
  CompanyPropType companyPropType;
  CompanyProp({
    required this.name,
    required this.meaning,
    required this.color,
    required this.startAlignment,
    required this.endAlignment,
    required this.companyPropType,
    this.navPath = Routes.home,
  });
}
