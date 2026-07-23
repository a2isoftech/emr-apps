import 'package:psnop/models/headers/header_titles.dart';

class MainHeaderModel {
  MainHeaderModel({
    required this.id,
    required this.isVisible,
    required this.headerTitles,
    this.title,
  });

  String? title;
  int id;
  bool isVisible;
  HeaderTitles headerTitles;
}
